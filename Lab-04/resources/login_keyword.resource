*** Settings ***
Documentation    This file contains the keywords for login actions

Library    SeleniumLibrary

Resource    ../variables/common_variables.resource


*** Variables ***
${EMAIL_INPUT}                        id=Input_Email
${PASSWORD_INPUT}                     id=Input_Password
${SUBMIT_BUTTON}                      xpath=//button[@type="submit"]
${LOGIN_BUTTON}                       xpath=//a[contains(text(), 'Login')]
${BASKET_BUTTON}                      xpath=//a[@class="esh-basketstatus"]

*** Keywords ***
Set And Open Browser
    [Documentation]    This keyword sets the browser where the tests will run

    [Arguments]    ${default_browser}=${BROWSER}

    ${driverpath}    Evaluate    webdriver_manager.chrome.ChromeDriverManager().install()    modules=webdriver_manager.chrome
    ${browser_options}    Set Variable    add_argument("--incognito");add_argument("--start-maximized");add_argument("--disable-search-engine-choice-screen");add_argument("--ignore-certificate-errors")

    Open Browser    ${DEFAULT_URL}
    ...    ${default_browser}
    ...    options=${browser_options}
    ...    executable_path=${driverpath}

Close Environment
    [Documentation]    This keyword closes the environment

    Close All Browsers

Open The Login Page
    [Documentation]    Open The Login Page

    Wait Until Element Is Enabled    ${LOGIN_BUTTON}
    Click Element    ${LOGIN_BUTTON}

Input Username In The Login Page
    [Documentation]    Input Username In The Login Page
    [Arguments]     ${EMAIL_VALUE}

    Wait Until Element Is Enabled    ${EMAIL_INPUT}
    Input Text    ${EMAIL_INPUT}    ${EMAIL_VALUE}

Input Password In The Login Page
    [Documentation]    Input Password In The Login Page
    [Arguments]    ${PASSWORD_VALUE}

    Wait Until Element Is Enabled    ${PASSWORD_INPUT}
    Input Text    ${PASSWORD_INPUT}    ${PASSWORD_VALUE}

Click Submit In Login Page
    [Documentation]    Click Submit In Login Page

    Wait Until Element Is Enabled    ${SUBMIT_BUTTON}
    Click Button    ${SUBMIT_BUTTON}


