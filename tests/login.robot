*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Valid Login
    [Tags]    smoke    login
    Open Login Page
    Login With Valid Credentials
    Verify Products Page Is Displayed
    Close Browser

Invalid Login
    [Tags]    regression    login
    Open Login Page
    Login With Invalid Credentials
    Close Browser