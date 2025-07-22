<?php
namespace modules\custommodule;

use Craft;
use craft\events\RegisterUrlRulesEvent;
use craft\web\UrlManager;
use yii\base\Event;
use yii\base\Module as BaseModule;

class Module extends BaseModule
{
    public function init()
    {
        parent::init();

        // Set module alias
        Craft::setAlias('@modules/custommodule', $this->getBasePath());

        // Register URL rules for web requests only
        if (Craft::$app->getRequest()->getIsSiteRequest()) {
            Event::on(
                UrlManager::class,
                UrlManager::EVENT_REGISTER_SITE_URL_RULES,
                function(RegisterUrlRulesEvent $event) {
                    $event->rules['newsletter-signup'] = 'custommodule/subscribe/newsletter-signup';
                    $event->rules['event-registration'] = 'custommodule/subscribe/event-registration';
                }
            );
        }
    }
}