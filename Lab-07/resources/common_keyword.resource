*** Settings ***
Documentation    This file contains the Common Keywords

Resource    ../variables/common_variables.resource
Library    SeleniumLibrary


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