*** Settings ***
Documentation    This file contains the test suite for <description>

Resource    ../resources/login_keyword.resource


*** Test Cases ***
Test Login
    [Documentation]    Valid Login with valid username and password

    Set And Open Browser
    Open The Login Page
    Input Username In The Login Page    ${LOGIN_USERNAME}
    Input Password In The Login Page    ${LOGIN_PASSWORD}
    Click Submit In Login Page
    Close Environment
