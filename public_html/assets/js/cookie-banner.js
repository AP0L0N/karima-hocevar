/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	// The require scope
/******/ 	var __webpack_require__ = {};
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
/*!*********************************!*\
  !*** ./src/js/cookie-banner.js ***!
  \*********************************/
__webpack_require__.r(__webpack_exports__);
function _typeof(o) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (o) { return typeof o; } : function (o) { return o && "function" == typeof Symbol && o.constructor === Symbol && o !== Symbol.prototype ? "symbol" : typeof o; }, _typeof(o); }
function _defineProperty(e, r, t) { return (r = _toPropertyKey(r)) in e ? Object.defineProperty(e, r, { value: t, enumerable: !0, configurable: !0, writable: !0 }) : e[r] = t, e; }
function _createForOfIteratorHelper(r, e) { var t = "undefined" != typeof Symbol && r[Symbol.iterator] || r["@@iterator"]; if (!t) { if (Array.isArray(r) || (t = _unsupportedIterableToArray(r)) || e && r && "number" == typeof r.length) { t && (r = t); var _n = 0, F = function F() {}; return { s: F, n: function n() { return _n >= r.length ? { done: !0 } : { done: !1, value: r[_n++] }; }, e: function e(r) { throw r; }, f: F }; } throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); } var o, a = !0, u = !1; return { s: function s() { t = t.call(r); }, n: function n() { var r = t.next(); return a = r.done, r; }, e: function e(r) { u = !0, o = r; }, f: function f() { try { a || null == t["return"] || t["return"](); } finally { if (u) throw o; } } }; }
function _unsupportedIterableToArray(r, a) { if (r) { if ("string" == typeof r) return _arrayLikeToArray(r, a); var t = {}.toString.call(r).slice(8, -1); return "Object" === t && r.constructor && (t = r.constructor.name), "Map" === t || "Set" === t ? Array.from(r) : "Arguments" === t || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(t) ? _arrayLikeToArray(r, a) : void 0; } }
function _arrayLikeToArray(r, a) { (null == a || a > r.length) && (a = r.length); for (var e = 0, n = Array(a); e < a; e++) n[e] = r[e]; return n; }
function _classCallCheck(a, n) { if (!(a instanceof n)) throw new TypeError("Cannot call a class as a function"); }
function _defineProperties(e, r) { for (var t = 0; t < r.length; t++) { var o = r[t]; o.enumerable = o.enumerable || !1, o.configurable = !0, "value" in o && (o.writable = !0), Object.defineProperty(e, _toPropertyKey(o.key), o); } }
function _createClass(e, r, t) { return r && _defineProperties(e.prototype, r), t && _defineProperties(e, t), Object.defineProperty(e, "prototype", { writable: !1 }), e; }
function _toPropertyKey(t) { var i = _toPrimitive(t, "string"); return "symbol" == _typeof(i) ? i : i + ""; }
function _toPrimitive(t, r) { if ("object" != _typeof(t) || !t) return t; var e = t[Symbol.toPrimitive]; if (void 0 !== e) { var i = e.call(t, r || "default"); if ("object" != _typeof(i)) return i; throw new TypeError("@@toPrimitive must return a primitive value."); } return ("string" === r ? String : Number)(t); }
var CookieBanner = /*#__PURE__*/function () {
  function CookieBanner(config) {
    _classCallCheck(this, CookieBanner);
    this.consents = config.consents;
    this.strings = config.strings;
    this.classes = config.classes || {};
  }
  return _createClass(CookieBanner, [{
    key: "init",
    value: function init() {
      var _this = this;
      var hidden = this.getCookie('tkcb_hidden') !== null;

      // Init GA's dataLayer if not yet initialized
      window.dataLayer = window.dataLayer || [];

      // Init default "Consent Mode" consents
      this.gtag('consent', 'default', {
        'analytics_storage': 'denied',
        'functionality_storage': 'denied',
        'ad_storage': 'denied',
        'ad_personalization': 'denied',
        'ad_user_data': 'denied'
      });

      // Update "Consent Mode" consents
      this.gtag('consent', 'update', {
        'analytics_storage': this.getConsent('analytics_storage') ? 'granted' : 'denied',
        'functionality_storage': this.getConsent('functionality_storage') ? 'granted' : 'denied',
        'ad_storage': this.getConsent('ad_storage') ? 'granted' : 'denied',
        'ad_personalization': this.getConsent('ad_personalization') ? 'granted' : 'denied',
        'ad_user_data': this.getConsent('ad_user_data') ? 'granted' : 'denied'
      });

      // Continue further worker after DOM is ready
      document.addEventListener('DOMContentLoaded', function () {
        _this.domReady();
      });
    }
  }, {
    key: "domReady",
    value: function domReady() {
      var hidden = this.getCookie('tkcb_hidden') !== null;
      var standaloneSettings = document.getElementById('tkcb-settings');
      if (standaloneSettings) {
        standaloneSettings.innerHTML = this.renderStandaloneSettings();
      }
      if (!hidden && !standaloneSettings) {
        this.show();
      }
      this.registerEvents();
    }
  }, {
    key: "show",
    value: function show() {
      var tkcb = document.getElementById('tkcb');
      tkcb.innerHTML = this.renderBanner();
      tkcb.style.display = 'block';
    }
  }, {
    key: "hide",
    value: function hide() {
      var tkcb = document.getElementById('tkcb');
      tkcb.style.display = 'none';
      this.setCookie('tkcb_hidden', 1);
    }
  }, {
    key: "gtag",
    value: function gtag() {
      dataLayer.push(arguments);
    }
  }, {
    key: "showSettings",
    value: function showSettings() {
      var defaultView = document.getElementById('tkcb-default');
      var settings = document.getElementById('tkcb-inline-settings');
      defaultView.style.display = 'none';
      settings.style.display = 'block';
    }
  }, {
    key: "showDefaultView",
    value: function showDefaultView() {
      var defaultView = document.getElementById('tkcb-default');
      var settings = document.getElementById('tkcb-inline-settings');
      defaultView.style.display = 'block';
      settings.style.display = 'none';
    }
  }, {
    key: "registerEvents",
    value: function registerEvents() {
      var _this2 = this;
      var buttonAllow = document.getElementById('tkcb-button-allow');
      var buttonDeny = document.getElementById('tkcb-button-deny');
      var buttonClose = document.getElementById('tkcb-button-close');
      var buttonSettings = document.getElementById('tkcb-button-settings');
      var buttonBack = document.getElementById('tkcb-button-back');
      if (buttonAllow) {
        buttonAllow.addEventListener('click', function () {
          _this2.consents.forEach(function (key) {
            _this2.setConsent(key, true);
          });
          _this2.hide();
        });
      }
      if (buttonDeny) {
        buttonDeny.addEventListener('click', function () {
          _this2.consents.forEach(function (key) {
            _this2.setConsent(key, false);
          });
          _this2.hide();
        });
      }
      if (buttonClose) {
        buttonClose.addEventListener('click', function () {
          _this2.hide();
        });
      }
      if (buttonSettings) {
        buttonSettings.addEventListener('click', function () {
          _this2.showSettings();
        });
      }
      if (buttonBack) {
        buttonBack.addEventListener('click', function () {
          _this2.showDefaultView();
        });
      }
      var _iterator = _createForOfIteratorHelper(this.consents),
        _step;
      try {
        var _loop = function _loop() {
          var key = _step.value;
          var toggles = document.getElementsByClassName("tkcb-consent-".concat(key));
          Array.prototype.forEach.call(toggles, function (toggle) {
            toggle.addEventListener('change', function () {
              _this2.setConsent(key, toggle.checked);
            });
          });
        };
        for (_iterator.s(); !(_step = _iterator.n()).done;) {
          _loop();
        }
      } catch (err) {
        _iterator.e(err);
      } finally {
        _iterator.f();
      }
    }
  }, {
    key: "getConsent",
    value: function getConsent(key) {
      if (key === 'essential') {
        return true;
      }
      var consents = JSON.parse(this.getCookie('tkcb_consents'));
      if (!consents) {
        return false;
      }
      return key in consents && consents[key] === true;
    }
  }, {
    key: "setConsent",
    value: function setConsent(key, value) {
      var consents = JSON.parse(this.getCookie('tkcb_consents'));
      if (!consents) {
        consents = {};
      }
      if (key === 'essential') {
        consents[key] = true;
      } else {
        consents[key] = value;

        // Update "Consent Mode" consent
        this.gtag('consent', 'update', _defineProperty({}, key, value ? 'granted' : 'denied'));
      }
      this.setCookie('tkcb_consents', JSON.stringify(consents));
    }
  }, {
    key: "renderConsentToggles",
    value: function renderConsentToggles() {
      var toggles = '';
      var _iterator2 = _createForOfIteratorHelper(this.consents),
        _step2;
      try {
        for (_iterator2.s(); !(_step2 = _iterator2.n()).done;) {
          var key = _step2.value;
          var checked = this.getConsent(key) ? 'checked' : '';
          var disabled = key === 'essential' ? 'disabled' : '';
          toggles += "\n                <div class=\"tkcb-toggle\">\n                    <input type=\"checkbox\" class=\"tkcb-toggle-input tkcb-consent-".concat(key, "\"\n                        id=\"tkcb-consent-").concat(key, "\" ").concat(checked, " ").concat(disabled, ">\n                    <label class=\"tkcb-toggle-label\" for=\"tkcb-consent-").concat(key, "\">\n                        <span>").concat(this.strings.consents[key], "</span>\n                    </label>\n                </div>\n            ");
        }
      } catch (err) {
        _iterator2.e(err);
      } finally {
        _iterator2.f();
      }
      return toggles;
    }
  }, {
    key: "renderBanner",
    value: function renderBanner() {
      var contentContainer = 'contentContainer' in this.classes ? this.classes['contentContainer'] : '';
      var buttonPrimaryClass = 'buttonPrimary' in this.classes ? this.classes['buttonPrimary'] : '';
      var buttonSecondaryClass = 'buttonSecondary' in this.classes ? this.classes['buttonSecondary'] : '';
      var descriptionGoogle = 'descriptionGoogle' in this.strings ? "<p>".concat(this.strings.descriptionGoogle, "</p>") : '';
      return "\n            <div class=\"".concat(contentContainer, " tkcb-inside\">\n                <div id=\"tkcb-default\">\n                    <div class=\"tkcb-content\">\n                        <p class=\"tkcb-title\">").concat(this.strings.title, "</p>\n                        <p>").concat(this.strings.description, "</p>\n                        ").concat(descriptionGoogle, "\n                    </div>\n                    <div class=\"tkcb-buttons\">\n                        <a href=\"#\" class=\"").concat(buttonPrimaryClass, " tkcb-button\" id=\"tkcb-button-allow\"><span>").concat(this.strings.accept, "</span></a>\n                        <a href=\"#\" class=\"").concat(buttonPrimaryClass, " tkcb-button\" id=\"tkcb-button-deny\"><span>").concat(this.strings.decline, "</span></a>\n                        <a href=\"#\" class=\"").concat(buttonSecondaryClass, " tkcb-button tkcb-button-outline\" id=\"tkcb-button-settings\"><span>").concat(this.strings.settings, "</span></a>\n                    </div>\n                </div>\n                <div id=\"tkcb-inline-settings\" style=\"display: none\">\n                    <div class=\"tkcb-content\">\n                        <p class=\"tkcb-title\">").concat(this.strings.titleSettings, "</p>\n                        <p>").concat(this.strings.descriptionSettings, "</p>\n                        <div class=\"tkcb-toggles\">\n                            ").concat(this.renderConsentToggles(), "\n                        </div>\n                        <p>").concat(this.strings.descriptionBelowSettings, "</p>\n                    </div>\n                    <div class=\"tkcb-buttons\">\n                        <a href=\"#\" class=\"").concat(buttonSecondaryClass, " tkcb-button tkcb-button-outline\" id=\"tkcb-button-back\">").concat(this.strings.back, "</a>\n                        <a href=\"#\" class=\"").concat(buttonPrimaryClass, " tkcb-button\" id=\"tkcb-button-close\">").concat(this.strings.close, "</a>\n                    </div>\n                </div>\n            </div>");
    }
  }, {
    key: "renderStandaloneSettings",
    value: function renderStandaloneSettings() {
      return "\n            <div class=\"tkcb-inside\">\n                <div class=\"tkcb-toggles\">\n                    ".concat(this.renderConsentToggles(), "\n                </div>\n            </div>");
    }
  }, {
    key: "getCookie",
    value: function getCookie(name) {
      var ca = document.cookie.split(';');
      for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) === ' ') {
          c = c.substring(1);
        }
        if (c.indexOf(name) === 0) {
          return c.substring(name.length + 1, c.length);
        }
      }
      return null;
    }
  }, {
    key: "setCookie",
    value: function setCookie(name, value) {
      var days = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : 30;
      var d = new Date();
      d.setTime(d.getTime() + days * 24 * 60 * 60 * 1000);
      var expires = "expires=" + d.toUTCString();
      document.cookie = name + "=" + value + ";" + expires + ";path=/";
    }
  }]);
}();
window.CookieBanner = CookieBanner;
/******/ })()
;