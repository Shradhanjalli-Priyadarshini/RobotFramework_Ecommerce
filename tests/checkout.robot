*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Complete Checkout
    [Tags]    smoke    checkout
    Open Login Page
    Login With Valid Credentials
    Verify Products Page Is Displayed
    Select Sauce Labs Backpack
    Add Backpack To Cart
    Open Shopping Cart
    Handle Password Popup
    Verify Backpack In Cart
    Click Checkout
    Enter Checkout Information
    Click Continue
    Verify Checkout Overview
    Finish Checkout
    Verify Order Confirmation
    Close Browser