*** Settings ***
Documentation    This file contains the Common Keywords

Resource    ../variables/common_variables.resource
Library    SeleniumLibrary


*** Keywords ***
Set And Open Browser
    [Documentation]    This keyword sets the browser where the tests will run

    [Arguments]    ${default_browser}=${BROWSER}

    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --start-maximized
    Call Method    ${options}    add_argument    --incognito
    Call Method    ${options}    add_argument    --disable-search-engine-choice-screen
    Call Method    ${options}    add_argument    --ignore-certificate-errors
    Create WebDriver    Chrome    options=${options}
    # timeouts úteis
    Set Selenium Timeout          20 s
    Set Selenium Implicit Wait    2 s

    Go To    ${DEFAULT_URL}

Close Environment
    [Documentation]    This keyword closes the environment

    Close All Browsers