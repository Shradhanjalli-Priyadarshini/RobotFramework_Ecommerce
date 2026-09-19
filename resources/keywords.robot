*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource   variables.robot

*** Keywords ***
Open Login Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Login With Valid Credentials
    Input Text    id=user-name    ${USERNAME}
    Input Password    id=password    ${PASSWORD}
    Click Button    id=login-button

Login With Invalid Credentials
    Input Text    id=user-name    ${USERNAME}
    Input Password    id=password    ${INVALID_PASSWORD}
    Click Button    id=login-button
    Wait Until Page Contains    Epic sadface: Username and password do not match any user in this service    10s

Verify Products Page Is Displayed
    Wait Until Page Contains Element    class=title
    Element Text Should Be    class=title    Products

Verify Login Error Message
    Wait Until Page Contains Element    css=[data-test="error"]
    Element Should Contain    css=[data-test="error"]    Username and password do not match

Select Sauce Labs Backpack
    Wait Until Element Is Visible    link=Sauce Labs Backpack    10s
    Click Link    Sauce Labs Backpack
    Wait Until Location Contains    /inventory-item.html    10s
    Wait Until Element Is Visible    id=add-to-cart    10s

Add Backpack To Cart
    Wait Until Element Is Visible    id=add-to-cart    10s
    Click Element    id=add-to-cart
    Sleep    1s

Verify Backpack Details
    Wait Until Page Contains    Sauce Labs Backpack    10s
    Wait Until Element Is Visible    id=add-to-cart    10s

Open Shopping Cart
    Go To    ${BASE_URL}cart.html
    Wait Until Location Contains    /cart.html    10s

Verify Backpack In Cart
    Wait Until Element Is Visible    css=.cart_item    10s
    Page Should Contain    Sauce Labs Backpack

Handle Password Popup
    Sleep    2s
    Run    powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{ENTER}')"
    Sleep    2s

Click Checkout
    Wait Until Element Is Visible    id=checkout    10s
    Click Element    id=checkout
    Sleep    3s
    Log Location
    Capture Page Screenshot

# Click Checkout
#     Wait Until Element Is Visible    id=checkout    10s
#     Click Element    id=checkout
#     Sleep    2s

Enter Checkout Information
    Sleep    3s
    Log Location
    Capture Page Screenshot
    Wait Until Element Is Visible    id=first-name    20s
    Input Text    id=first-name    Shradha
    Input Text    id=last-name    Priyadarshini
    Input Text    id=postal-code    751001

Click Continue
    Click Button    id=continue

Verify Checkout Overview
    Wait Until Element Is Visible    css=.checkout_summary_container    10s
    Page Should Contain    Sauce Labs Backpack
    Page Should Contain    Payment Information
    Page Should Contain    Shipping Information

Finish Checkout
    Wait Until Element Is Visible    id=finish    10s
    Click Button    id=finish

Verify Order Confirmation
    Wait Until Page Contains    Thank you for your order!    10s
    Page Should Contain    Thank you for your order!

Close Browser
    Close All Browsers