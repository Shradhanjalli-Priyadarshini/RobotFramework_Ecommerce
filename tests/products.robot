*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Verify Product Selection
    [Tags]    smoke    products
    Open Login Page
    Login With Valid Credentials
    Verify Products Page Is Displayed
    Select Sauce Labs Backpack
    Verify Backpack Details
    Close Browser