# Binsearch+ Background

chrome.runtime.onInstalled.addListener ->
    chrome.declarativeContent.onPageChanged.removeRules undefined, ->
        chrome.declarativeContent.onPageChanged.addRules [
            {
                conditions: [
                    new chrome.declarativeContent.PageStateMatcher {
                        pageUrl: { urlContains: 'binsearch\.(info|net)' }
                    }
                ]
                actions: [ new chrome.declarativeContent.ShowPageAction() ]
            }
        ]
