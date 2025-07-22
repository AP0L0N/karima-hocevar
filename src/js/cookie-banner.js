class CookieBanner {

    constructor(config) {
        this.consents = config.consents;
        this.strings = config.strings;
        this.classes = config.classes || {};
    }

    init() {
        let hidden = this.getCookie('tkcb_hidden') !== null;

        // Init GA's dataLayer if not yet initialized
        window.dataLayer = window.dataLayer || [];

        // Init default "Consent Mode" consents
        this.gtag('consent', 'default', {
            'analytics_storage': 'denied',
            'functionality_storage': 'denied',
            'ad_storage': 'denied',
            'ad_personalization': 'denied',
            'ad_user_data': 'denied',
        });

        // Update "Consent Mode" consents
        this.gtag('consent', 'update', {
            'analytics_storage': this.getConsent('analytics_storage') ? 'granted' : 'denied',
            'functionality_storage': this.getConsent('functionality_storage') ? 'granted' : 'denied',
            'ad_storage': this.getConsent('ad_storage') ? 'granted' : 'denied',
            'ad_personalization': this.getConsent('ad_personalization') ? 'granted' : 'denied',
            'ad_user_data': this.getConsent('ad_user_data') ? 'granted' : 'denied',
        });

        // Continue further worker after DOM is ready
        document.addEventListener('DOMContentLoaded', () => {
            this.domReady();
        });
    }

    domReady() {
        let hidden = this.getCookie('tkcb_hidden') !== null;
        let standaloneSettings = document.getElementById('tkcb-settings');

        if (standaloneSettings) {
            standaloneSettings.innerHTML = this.renderStandaloneSettings();
        }

        if (! hidden && ! standaloneSettings) {
            this.show();
        }

        this.registerEvents();
    }

    show() {
        let tkcb = document.getElementById('tkcb');
        tkcb.innerHTML = this.renderBanner();
        tkcb.style.display = 'block';
    }

    hide() {
        let tkcb = document.getElementById('tkcb');
        tkcb.style.display = 'none';
        this.setCookie('tkcb_hidden', 1);
    }

    gtag() {
        dataLayer.push(arguments);
    }

    showSettings() {
        let defaultView = document.getElementById('tkcb-default');
        let settings = document.getElementById('tkcb-inline-settings');

        defaultView.style.display = 'none';
        settings.style.display = 'block';
    }

    showDefaultView() {
        let defaultView = document.getElementById('tkcb-default');
        let settings = document.getElementById('tkcb-inline-settings');

        defaultView.style.display = 'block';
        settings.style.display = 'none';
    }

    registerEvents() {
        let buttonAllow = document.getElementById('tkcb-button-allow');
        let buttonDeny = document.getElementById('tkcb-button-deny');
        let buttonClose = document.getElementById('tkcb-button-close');
        let buttonSettings = document.getElementById('tkcb-button-settings');
        let buttonBack = document.getElementById('tkcb-button-back');

        if (buttonAllow) {
            buttonAllow.addEventListener('click', () => {
                this.consents.forEach(key => {
                    this.setConsent(key, true);
                })

                this.hide();
            });
        }

        if (buttonDeny) {
            buttonDeny.addEventListener('click', () => {
                this.consents.forEach(key => {
                    this.setConsent(key, false);
                })

                this.hide();
            });
        }

        if (buttonClose) {
            buttonClose.addEventListener('click', () => {
                this.hide();
            });
        }

        if (buttonSettings) {
            buttonSettings.addEventListener('click', () => {
                this.showSettings();
            });
        }

        if (buttonBack) {
            buttonBack.addEventListener('click', () => {
                this.showDefaultView();
            });
        }

        for (const key of this.consents) {
            let toggles = document.getElementsByClassName(`tkcb-consent-${key}`);

            Array.prototype.forEach.call(toggles, toggle => {
                toggle.addEventListener('change', () => {
                    this.setConsent(key, toggle.checked);
                });
            });
        }
    }

    getConsent(key) {
        if (key === 'essential') {
            return true;
        }

        let consents = JSON.parse(this.getCookie('tkcb_consents'));

        if (! consents) {
            return false;
        }

        return key in consents && consents[key] === true;
    }

    setConsent(key, value) {
        let consents = JSON.parse(this.getCookie('tkcb_consents'));

        if (! consents) {
            consents = {};
        }

        if (key === 'essential') {
            consents[key] = true;
        } else {
            consents[key] = value;

            // Update "Consent Mode" consent
            this.gtag('consent', 'update', {
                [key]: value ? 'granted' : 'denied',
            })
        }

        this.setCookie('tkcb_consents', JSON.stringify(consents));
    }

    renderConsentToggles() {
        let toggles = '';

        for (const key of this.consents) {
            let checked = this.getConsent(key) ? 'checked' : '';
            let disabled = key === 'essential' ? 'disabled' : '';

            toggles += `
                <div class="tkcb-toggle">
                    <input type="checkbox" class="tkcb-toggle-input tkcb-consent-${key}"
                        id="tkcb-consent-${key}" ${checked} ${disabled}>
                    <label class="tkcb-toggle-label" for="tkcb-consent-${key}">
                        <span>${this.strings.consents[key]}</span>
                    </label>
                </div>
            `
        }

        return toggles;
    }

    renderBanner() {
        let contentContainer = 'contentContainer' in this.classes ? this.classes['contentContainer'] : '';
        let buttonPrimaryClass = 'buttonPrimary' in this.classes ? this.classes['buttonPrimary'] : '';
        let buttonSecondaryClass = 'buttonSecondary' in this.classes ? this.classes['buttonSecondary'] : '';
        let descriptionGoogle = 'descriptionGoogle' in this.strings ? `<p>${this.strings.descriptionGoogle}</p>` : '';

        return `
            <div class="${contentContainer} tkcb-inside">
                <div id="tkcb-default">
                    <div class="tkcb-content">
                        <p class="tkcb-title">${this.strings.title}</p>
                        <p>${this.strings.description}</p>
                        ${descriptionGoogle}
                    </div>
                    <div class="tkcb-buttons">
                        <a href="#" class="${buttonPrimaryClass} tkcb-button" id="tkcb-button-allow"><span>${this.strings.accept}</span></a>
                        <a href="#" class="${buttonPrimaryClass} tkcb-button" id="tkcb-button-deny"><span>${this.strings.decline}</span></a>
                        <a href="#" class="${buttonSecondaryClass} tkcb-button tkcb-button-outline" id="tkcb-button-settings"><span>${this.strings.settings}</span></a>
                    </div>
                </div>
                <div id="tkcb-inline-settings" style="display: none">
                    <div class="tkcb-content">
                        <p class="tkcb-title">${this.strings.titleSettings}</p>
                        <p>${this.strings.descriptionSettings}</p>
                        <div class="tkcb-toggles">
                            ${this.renderConsentToggles()}
                        </div>
                        <p>${this.strings.descriptionBelowSettings}</p>
                    </div>
                    <div class="tkcb-buttons">
                        <a href="#" class="${buttonSecondaryClass} tkcb-button tkcb-button-outline" id="tkcb-button-back">${this.strings.back}</a>
                        <a href="#" class="${buttonPrimaryClass} tkcb-button" id="tkcb-button-close">${this.strings.close}</a>
                    </div>
                </div>
            </div>`;
    }

    renderStandaloneSettings() {
        return `
            <div class="tkcb-inside">
                <div class="tkcb-toggles">
                    ${this.renderConsentToggles()}
                </div>
            </div>`;
    }

    getCookie(name) {
        let ca = document.cookie.split(';');

        for (let i = 0; i < ca.length; i++) {
            let c = ca[i];
            while (c.charAt(0) === ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) === 0) {
                return c.substring(name.length + 1, c.length);
            }
        }

        return null
    }

    setCookie(name, value, days = 30) {
        const d = new Date();
        d.setTime(d.getTime() + (days * 24 * 60 * 60 * 1000));

        let expires = "expires="+ d.toUTCString();
        document.cookie = name + "=" + value + ";" + expires + ";path=/";
    }
}

window.CookieBanner = CookieBanner;