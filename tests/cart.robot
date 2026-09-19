*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Verify Product Added To Cart
    [Tags]    smoke    cart
    Open Login Page
    Login With Valid Credentials
    Verify Products Page Is Displayed
    Select Sauce Labs Backpack
    Add Backpack To Cart
    Open Shopping Cart
    Verify Backpack In Cart
    Close Browser