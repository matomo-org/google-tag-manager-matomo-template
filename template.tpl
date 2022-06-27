___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Matomo Tracking Tag for Matomo Cloud",
  "categories": ["ANALYTICS"],
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAADg0lEQVRIie2WXWxURRTHz8ydO/fubru7aWlrv4QW2vIh4AohYDYqLQ8aA5EQnwySGPURNTEmPviiGH0wmuAHBPABQqTGJ2NCaaqGKrYlaa0NJTRtpbvQhPYudW139967e2fm+CJ0d90KD/C28zhn5v+b+Z85J0MQER7moA9VvQwoAx7IYCsFlMLegVj/8Gw2J7Z21OzvagtVGHejmLJyo9+ruQkwK/X1naz9qZV0SMlCE1K9f3ywu2cCAAghQqrIhtov3u16ZFUAAJQ1bX/7lkr8SagGiEApj75qdB0uCSht0Xe9k+d6JgyDmQYzuBbw6X9MJI6cGJIKAaXb+wnevk64H5gBuglUz176On3tp/sF3JhLfdk9ynWN5E36TdY3GD93YQoyc3J2DJiZ5wJhQKYuHk06C/cGIOKnp4etpK1RUhTSGT36zeiVsRinCgqDlLLFZOzH8VP3Bpz/daZ3IGbyEsmnlCylnCPdN9I0REEVqViGeXX+wkxy6P8AiaTz2ZkRggArdFjOyOhN+dX1zZwiI4oAEECTyBlkV0J6wEd/i510xOIKAITPz/4et22t3gSTgigNMTTZPb/1w/ie2WxYILUV7/ur/Rit0et0n89ccOKXb57NX7/8TH+ZnHu9fwRW+4BRYks6tqSNLAEAFOcCACCnWJg5dTyVEb5c8NauZ35uaAowQwNABNi3/oNHw9sKbrDoiY8Tca/ND5wCAazU5NNVakdICVVCHoBTkVF80q61FN342FBNLWdcu3NieSl+IivSBYDzljXupHUk/7qvAAWau6rXbKgWXmkGAQQpWlsHm9bYht+4e1FKmJWZnlroLwCMp1JFThAEm+Chlx+vq/JLVSIfnoebO/TIE7cCQR8tqBkgQKz0VAEgyFiRBgKgVNvba98+tF39B6AUBiv0jw7vfW7nS8AkFO9FgwUKAHtqVvk0TeX1payUW4LBRsaf3712f+c62/XyJdyceO3AlrXNlZHmFxvDm4TK5qkrRo2WqicLANtCoTdbWhDAkdJVKiPlar//vfY2TigAvPPKjmikyXY9NyfcrHCy4oXOtoN7NwKATs3drW+EzUZPOkLlPOUi4s7mgw2Vm+5YnXfqgWSyx7L+9ryOQMWB+vp6c7k/26744eL08NV5TaPRSMOz0RamLddQOpe4ZvXdtmdMFlxXHW0ORZbzUf4XlQFlAPwDXYWGXACj6aEAAAAASUVORK5CYII\u003d"
  },
  "description": "Matomo configuration",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "matomoDomain",
    "displayName": "Matomo Domain",
    "selectItems": [
      {
        "value": ".matomo.cloud",
        "displayValue": ".matomo.cloud"
      },
      {
        "value": ".innocraft.cloud",
        "displayValue": ".innocraft.cloud"
      }
    ],
    "simpleValueType": true,
    "help": "The domain on which your cloud is hosted, choose `.innocraft.cloud` if your cloud URL is `*.innocraft.cloud`"
  },
  {
    "type": "TEXT",
    "name": "matomoSubDomain",
    "displayName": "Matomo Sub Domain",
    "simpleValueType": true,
    "valueHint": "web",
    "notSetText": "Field is required",
    "help": "The subdomain of your Matomo Instance, only enter the subdomain, eg if your Matomo URL is \"https://web.inncoraft.cloud\" enter only web",
    "valueValidators": [
      {
        "type": "NON_EMPTY",
        "enablingConditions": []
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "idSite",
    "displayName": "Matomo idSite",
    "simpleValueType": true,
    "valueHint": "1",
    "notSetText": "Field is required",
    "help": "The idSite you want to track data into.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "disableTrackPageview",
    "checkboxText": "Disable Track Pageview",
    "simpleValueType": true,
    "help": "Disables the tracking of pageview"
  },
  {
    "type": "CHECKBOX",
    "name": "disableLinkTracking",
    "checkboxText": "Disable Link Tracking",
    "simpleValueType": true,
    "help": "Disables the automatic download and outlink tracking."
  },
  {
    "type": "CHECKBOX",
    "name": "disableCrossDomainLinking",
    "checkboxText": "Disable Cross Domain Linking",
    "simpleValueType": true,
    "help": "Disable this to accurately measure the same visitor across multiple domain names."
  },
  {
    "type": "CHECKBOX",
    "name": "enableDoNotTrack",
    "checkboxText": "Enable Do Not Track",
    "simpleValueType": true,
    "help": "Enable this feature to not track users who opt out of tracking using Mozilla\u0027s (proposed) Do Not Track setting\nNote: When enabled it sets _paq.push([\"setDoNotTrack\", true]); which will not send any tracking request when a visitor has DNT enabled unlike the \"DNT Matomo Setting\" which drops the request on the server when a visitor has DNT enabled."
  },
  {
    "type": "CHECKBOX",
    "name": "enableJSErrorTracking",
    "checkboxText": "Enable JavaScript Error Tracking",
    "simpleValueType": true,
    "help": "Enables the tracking of uncaught JavaScript errors as an event."
  },
  {
    "type": "CHECKBOX",
    "name": "enableHeartBeatTimer",
    "checkboxText": "Enable HeartBeat Timer",
    "simpleValueType": true,
    "help": "Install a Heart beat timer that will regularly send requests to Matomo in order to better measure the time spent on the page."
  },
  {
    "type": "CHECKBOX",
    "name": "trackAllContentImpressions",
    "checkboxText": "Track All Content Impressions",
    "simpleValueType": true,
    "help": "Enables the content tracking feature by scanning the entire DOM for all content blocks and tracks all impressions once the page has loaded."
  },
  {
    "type": "CHECKBOX",
    "name": "trackVisibleContentImpressions",
    "checkboxText": "Track Visible Content Impressions",
    "simpleValueType": true,
    "help": "Enables the content tracking feature by scanning the entire DOM for all content blocks but only tracks content impressions once the user scrolls to the content and the content is actually visible."
  },
  {
    "type": "CHECKBOX",
    "name": "disableCookies",
    "checkboxText": "Disable cookies",
    "simpleValueType": true,
    "help": "Disables all first party cookies."
  },
  {
    "type": "CHECKBOX",
    "name": "requireConsent",
    "checkboxText": "Require tracking consent",
    "simpleValueType": true,
    "help": "Track only when user gave tracking consent. In a consent screen you need to call \"window._paq\u003dwindow._paq||[];window._paq.push([\u0027rememberConsentGiven\u0027]);\" when the user gives consent."
  },
  {
    "type": "CHECKBOX",
    "name": "requireCookieConsent",
    "checkboxText": "Require cookie consent",
    "simpleValueType": true,
    "help": "Use cookies only if the user gave cookie consent, otherwise track the user without cookies. In a consent screen you need to call \"window._paq\u003dwindow._paq||[];window._paq.push([\u0027rememberCookieConsentGiven\u0027]);\" when the user gives consent for cookies."
  },
  {
    "type": "CHECKBOX",
    "name": "setSecureCookie",
    "checkboxText": "Enable Secure Cookie",
    "simpleValueType": true,
    "help": "Enable the Secure cookie flag on all first party cookies. This should be used when your website is only available under HTTPS so that all tracking cookies are always sent over secure connection."
  },
  {
    "type": "TEXT",
    "name": "cookieDomain",
    "displayName": "Cookie Domain",
    "simpleValueType": true,
    "help": "The default is the current document domain. If your website can be visited for example at both www.example.com and example.com, you would use: \".example.com\" or \"*.example.com\". Note: The variable is only evaluated at the time when tracker is being created, make sure you have the variable defined before that."
  },
  {
    "type": "TEXT",
    "name": "cookiePath",
    "displayName": "Cookie Path",
    "simpleValueType": true,
    "help": "When tracking many subdirectories in separate websites, the cookie path prevents the number of cookies to quickly increase and prevent browser from deleting some of the cookies. This ensures optimal data accuracy and improves performance for your users (fewer cookies are sent with each request)."
  },
  {
    "type": "SELECT",
    "name": "cookieSameSite",
    "displayName": "",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "Lax",
        "displayValue": "Lax"
      },
      {
        "value": "None",
        "displayValue": "None"
      },
      {
        "value": "Strict",
        "displayValue": "Strict"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "CHECKBOX",
    "name": "enableBrowserFeatureDetection",
    "checkboxText": "Enable Browser Feature Detection",
    "simpleValueType": true,
    "help": "By default, Matomo accesses some information from the visitor’s browser like the browser resolution. Some privacy regulations may allow access of such information from the visitor’s device only after having a consent. If this applies to you, you can disable this feature.\n\nTo learn more, check this https://matomo.org/faq/how-to/how-do-i-disable-browser-feature-detection-completely/."
  },
  {
    "type": "PARAM_TABLE",
    "name": "domains",
    "displayName": "Domains",
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "domain",
          "displayName": "Domain",
          "simpleValueType": true
        },
        "isUnique": false
      }
    ],
    "help": "Used to detect outlinks. Add hostnames or domains to be treated as local. For wildcard subdomains, you can use: \".example.com\" or \"*.example.com\". You can also specify a path along a domain: \"*.example.com/subsite1\".",
    "editRowTitle": "Edit Domain",
    "newRowButtonText": "Add Domain",
    "newRowTitle": "Domain"
  },
  {
    "type": "CHECKBOX",
    "name": "doNotUseSendBeacon",
    "checkboxText": "Do not use sendBeacon",
    "simpleValueType": true,
    "help": "Uses regular ajax request."
  },
  {
    "type": "TEXT",
    "name": "userId",
    "displayName": "User ID",
    "simpleValueType": true,
    "textAsList": false,
    "help": "Sets a User ID to this user (such as an email address or a username)."
  },
  {
    "type": "PARAM_TABLE",
    "name": "customDimensions",
    "displayName": "Custom Dimensions",
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "index",
          "displayName": "Index",
          "simpleValueType": true
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "TEXT",
          "name": "value",
          "displayName": "Value",
          "simpleValueType": true
        },
        "isUnique": false
      }
    ],
    "newRowTitle": "Custom Dimension",
    "newRowButtonText": "Add Custom Dimension",
    "help": "Optionally set one or multiple custom dimensions."
  },
  {
    "type": "SELECT",
    "name": "jsEndpoint",
    "displayName": "Tracker Javascript Path",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "matomo.js",
        "displayValue": "matomo.js"
      },
      {
        "value": "piwik.js",
        "displayValue": "piwik.js"
      },
      {
        "value": "js/",
        "displayValue": "js/"
      },
      {
        "value": "js/tracker.php",
        "displayValue": "js/tracker.php"
      }
    ],
    "simpleValueType": true,
    "help": "Here you can configure the source path of the Matomo Tracker JavaScript, if you are not using the \"Bundle Tracker\" option.  Default: matomo.js"
  },
  {
    "type": "SELECT",
    "name": "trackingEndpoint",
    "displayName": "Tracking Request Target Path",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "matomo.php",
        "displayValue": "matomo.php"
      },
      {
        "value": "piwik.php",
        "displayValue": "piwik.php"
      },
      {
        "value": "js/",
        "displayValue": "js/"
      },
      {
        "value": "js/tracker.php",
        "displayValue": "js/tracker.php"
      }
    ],
    "simpleValueType": true,
    "help": "Here you can configure the target path for tracking requests.  Default: matomo.php"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');
const createQueue = require('createQueue');
const injectScript = require('injectScript');
log('data =', data);

const onSuccess = () => {
  log('Tracker.js loaded successfully');
  data.gtmOnSuccess();
};

const onFailure = () => {
  log('Tracker.js loading failed');
  data.gtmOnFailure();
};

if (data.matomoSubDomain && data.idSite) {
  const injectScript = require('injectScript');
  let baseUrl = 'https://cdn.matomo.cloud/' + data.matomoSubDomain + data.matomoDomain  + '/';
  
  // if you want to test this on your local instance, uncomment the below line add your local instance url and add the same inside the permissions tab in inject scripts
  // baseUrl='{YOURMATOMO_URL}';
 
  const url = baseUrl + data.jsEndpoint;
  log(url);
  const _paq = createQueue('_paq');
  _paq(['setSiteId',data.idSite]);
  _paq(['setTrackerUrl',baseUrl + data.trackingEndpoint]);
  
  let disableConfigValues = {'disableTrackPageview':'trackPageView', 'disableLinkTracking':'enableLinkTracking', 'disableCrossDomainLinking':'enableCrossDomainLinking'};
  paqDisable(_paq, disableConfigValues);
  
  let enableConfigValues = {'enableDoNotTrack':'setDoNotTrack', 'enableJSErrorTracking':'enableJSErrorTracking', 'enableHeartBeatTimer':'enableHeartBeatTimer','trackAllContentImpressions':'trackAllContentImpressions', 'trackVisibleContentImpressions':'trackVisibleContentImpressions','disableCookies':'disableCookies','requireConsent':'requireConsent', 'requireCookieConsent':'requireCookieConsent','setSecureCookie':'setSecureCookie'};
  paqEnable(_paq, enableConfigValues);
  
  let configWithValues = {'cookieDomain':'setCookieDomain','cookiePath':'setCookiePath','cookieSameSite':'setCookieSameSite'};
  paqValue(_paq, configWithValues);
  
  disableConfigValues = {'enableBrowserFeatureDetection':'disableBrowserFeatureDetection'};
  paqDisable(_paq, disableConfigValues);
  
  const domains = getDomains();
  if (domains.length) {
    _paq("setDomains",domains);
  }
  
  disableConfigValues = {'doNotUseSendBeacon':'alwaysUseSendBeacon'};
  paqDisable(_paq, disableConfigValues);
  
  configWithValues = {'userId':'setUserId'};
  paqValue(_paq, configWithValues);
  
  paqCustomDimensions(_paq);
  
  log('injecting script: ' + url);
  injectScript(url, onSuccess, onFailure, url);
}

function paqDisable(_paq, values)
{
  for(let key in values) {
    if (!data[key]) {
      _paq([values[key]]);
    }
  }
}


function paqEnable(_paq, values)
{
  for(let key in values) {
    if (data[key]) {
      _paq([values[key], true]);
    }
  }
}

function paqValue(_paq, values)
{
  for(let key in values) {
    if (data[key]) {
      _paq([values[key], data[key]]);
    }
  }
}

function getDomains()
{
  let domains = [];
  if (data.domains) {
    for (let i=0;i<data.domains.length;i++) {
      if(data.domains[i].domain) {
        domains.push(data.domains[i].domain);
      }
    }
  }
  
  return domains;
}

function paqCustomDimensions(_paq)
{
  if (data.customDimensions) {
    for (let i=0;i<data.customDimensions.length;i++) {
      if(data.customDimensions[i].index) {
        _paq(["setCustomDimension",data.customDimensions[i].index,data.customDimensions[i].value]);
      }
    }
  }
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://cdn.matomo.cloud/*.matomo.cloud/piwik.js"
              },
              {
                "type": 1,
                "string": "https://cdn.matomo.cloud/*.matomo.cloud/matomo.js"
              },
              {
                "type": 1,
                "string": "https://cdn.matomo.cloud/*.innocraft.cloud/piwik.js"
              },
              {
                "type": 1,
                "string": "https://cdn.matomo.cloud/*.innocraft.cloud/matomo.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_paq"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: should_load_matomo_js
  code: |-
    const mockData = {"enableBrowserFeatureDetection":false,"disableCrossDomainLinking":false,"trackingEndpoint":"matomo.php","disableCookies":false,"enableJSErrorTracking":false,"setSecureCookie":false,"trackAllContentImpressions":false,"requireCookieConsent":false,"enableDoNotTrack":false,"requireConsent":false,"doNotUseSendBeacon":false,"jsEndpoint":"matomo.js","idSite":"3","cookieSameSite":"Lax","disableTrackPageview":false,"disableLinkTracking":false,"matomoSubDomain":"web","trackVisibleContentImpressions":false,"matomoDomain":".innocraft.cloud","enableHeartBeatTimer":false};

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();


___NOTES___

Created on 22/06/2022, 12:31:16


