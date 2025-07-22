<?php
namespace modules\custommodule\controllers;

use Craft;
use craft\web\Controller;
use yii\web\Response;
use craft\elements\Entry;

class SubscribeController extends Controller
{
    // Allow anonymous access to this controller
    protected array|bool|int $allowAnonymous = true;

    private function verifyRecaptchaToken(string $token): bool
    {
        $recaptchaSecret = getenv('RECAPTCHA_SECRET_KEY');
        $recaptchaResponse = $token;

        $recaptchaUrl = 'https://www.google.com/recaptcha/api/siteverify';
        $recaptchaData = [
            'secret' => $recaptchaSecret,
            'response' => $recaptchaResponse,
        ];

        $ch = curl_init($recaptchaUrl);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($recaptchaData));

        $recaptchaResult = curl_exec($ch);
        curl_close($ch);

        $recaptchaResultData = json_decode($recaptchaResult, true);

        if (!$recaptchaResultData['success']) {
            return false;
        }

        return true;
    }

    public function actionNewsletterSignup(): Response
    {
        $this->requirePostRequest();

        // Get email from POST request
        $email = Craft::$app->getRequest()->getRequiredBodyParam('email');
        $name = Craft::$app->getRequest()->getRequiredBodyParam('name');
        $token = Craft::$app->getRequest()->getRequiredBodyParam('token');

        if(!$this->verifyRecaptchaToken($token)) {
            return $this->asJson([
                'success' => false,
                'message' => 'Invalid reCAPTCHA token.',
            ]);
        }

        // Basic email validation
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return $this->asJson([
                'success' => false,
                'message' => 'Please provide a valid email address.',
            ]);
        }

        // Check if subscriber already exists
        $existingEntry = \craft\elements\Entry::find()
            ->section('newsletterSubscribers')
            ->type('newsletterSubscriber')
            ->email($email)
            ->one();

        if ($existingEntry) {
            return $this->asJson([
                'success' => false,
                'message' => 'This email is already subscribed to our newsletter.',
            ]);
        }

        // Get the section
        $section = Craft::$app->entries->getSectionByHandle('newsletterSubscribers');
        if (!$section) {
            throw new SectionNotFoundException('Section "newsletterSubscribers" not found.');
        }

        // Get the entry type
        $entryType = $section->getEntryTypes("newsletterSubscriber")[0];
        if (!$entryType) {
            throw new EntryTypeNotFoundException('Entry type for section "newsletterSubscribers" not found.');
        }

        // Create new subscriber entry
        $entry = new \craft\elements\Entry();
        $entry->sectionId = $section->id;
        $entry->typeId = $entryType->id;
        $entry->email = $email;
        $entry->title = $name;
        $entry->enabled = true;

        if (!Craft::$app->elements->saveElement($entry)) {
            return $this->asJson([
                'success' => false,
                'message' => 'Could not save subscriber information.',
            ]);
        }

        // Send the email
        $success = $this->sendNewsletterEmail($email, $name);

        if ($success) {
            return $this->asJson([
                'success' => true,
                'message' => 'Thank you for subscribing to our newsletter!',
            ]);
        }

        return $this->asJson([
            'success' => false,
            'message' => 'There was an error sending your subscription email.',
        ]);
    }

    private function sendNewsletterEmail(string $email, string $name): bool
    {
        $mailer = Craft::$app->getMailer();
        $view = Craft::$app->getView();

        // Prepare email content
        $subject = 'You\'ve successfully signed up for our newsletter!';
        $htmlBody = $view->renderTemplate(
            '_email/_newsletterSignup',
            ['email' => $email, 'name' => $name],
            $view::TEMPLATE_MODE_SITE
        );

        // Compose and send email
        $message = $mailer->compose()
            ->setTo($email)
            ->setSubject($subject)
            ->setHtmlBody($htmlBody);

        return $message->send();
    }

    public function actionEventRegistration(): Response
    {
        $this->requirePostRequest();

        // Get email from POST request
        $email = Craft::$app->getRequest()->getRequiredBodyParam('email');
        $name = Craft::$app->getRequest()->getRequiredBodyParam('name');
        $phone = Craft::$app->getRequest()->getRequiredBodyParam('phone');
        $profession = Craft::$app->getRequest()->getRequiredBodyParam('profession');
        $eventTitle = Craft::$app->getRequest()->getRequiredBodyParam('eventTitle');
        $eventId = Craft::$app->getRequest()->getRequiredBodyParam('eventId');
        $token = Craft::$app->getRequest()->getRequiredBodyParam('token');

        if(!$this->verifyRecaptchaToken($token)) {
            return $this->asJson([
                'success' => false,
                'message' => 'Invalid reCAPTCHA token.',
            ]);
        }
        
        // Basic email validation
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return $this->asJson([
                'success' => false,
                'message' => 'Please provide a valid email address.',
            ]);
        }

        // Check if subscriber already exists
        $existingEntry = \craft\elements\Entry::find()
            ->section('eventRegistrations')
            ->type('eventSubscriber')
            ->email($email)
            ->one();

        if ($existingEntry) {
            return $this->asJson([
                'success' => false,
                'message' => 'This email is already registered for the event.',
            ]);
        }

        // Get the section
        $section = Craft::$app->entries->getSectionByHandle('eventRegistrations');
        if (!$section) {
            throw new SectionNotFoundException('Section "eventRegistrations" not found.');
        }

        // Get the entry type
        $entryType = $section->getEntryTypes("eventSubscriber")[0];
        if (!$entryType) {
            throw new EntryTypeNotFoundException('Entry type for section "eventSubscriber" not found.');
        }
        
        // Create new subscriber entry
        $entry = new \craft\elements\Entry();
        $entry->sectionId = $section->id;
        $entry->typeId = $entryType->id;
        $entry->email = $email;
        $entry->title = $name;
        $entry->enabled = true;
        $entry->eventTitle = $eventTitle;
        $entry->event = [$eventId];
        $entry->phone = $phone;
        $entry->profession = $profession;

        if (!Craft::$app->elements->saveElement($entry)) {
            return $this->asJson([
                'success' => false,
                'message' => 'Could not save subscriber information.',
            ]);
        }

        // Send the email
        $success = $this->sendEventRegistrationEmail($email, $name, $phone, $profession, $eventTitle);

        // Send the email to the admin
        $this->sendEventRegistrationEmail($email, $name, $phone, $profession, $eventTitle, true);

        if ($success) {
            return $this->asJson([
                'success' => true,
                'message' => 'You ve successfully registered for the event!',
            ]);
        }

        return $this->asJson([
            'success' => false,
            'message' => 'There was an error sending your registration email.',
        ]);
    }

    private function sendEventRegistrationEmail(string $email, string $name, string $phone, string $profession, string $event, bool $messageToAdmin = false): bool
    {
        $mailer = Craft::$app->getMailer();
        $view = Craft::$app->getView();

        // Prepare email content
        $subject = $messageToAdmin ? 'New registration message on the Karima Hočevar website!' : 'You\'ve successfully registered for the event!';
        $htmlBody = $view->renderTemplate(
            $messageToAdmin ? '_email/_adminEventCopy' : '_email/_eventRegistration',
            ['email' => $email, 'name' => $name, 'phone' => $phone, 'profession' => $profession, 'event' => $event],
            $view::TEMPLATE_MODE_SITE
        );

        // Compose and send email
        $message = $mailer->compose()
            ->setTo($messageToAdmin ? getenv('INFO_EMAIL') : $email)
            ->setSubject($subject)
            ->setHtmlBody($htmlBody);

        return $message->send();
    }
}
