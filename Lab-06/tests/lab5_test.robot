*** Settings ***
Documentation    This file contains the test suite for <description>

Variables    ../variables/environment.py

Resource    ../resources/login/login_keyword.resource
Resource    ../resources/common_keyword.resource

Test Setup    Run Keywords
...           Set And Open Browser

Test Teardown    Run Keywords
...    Close Environment


*** Test Cases ***
Test Login
    [Documentation]    Valid Login with valid username and password
    [Tags]    login    sanity

    Open The Login Page
    Input Username In The Login Page    ${LOGIN_USERNAME}
    Input Password In The Login Page    ${LOGIN_PASSWORD}
    Click Submit In Login Page
