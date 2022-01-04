*** Settings ***
Library    SeleniumLibrary
Variables    ../../PageObject/Locators.py

*** Keywords ***
Nvigate to the Registration page
    CLick on my account
    Click on Register

Navigate to the Login page
    CLick on my account
    Click on Login

CLick on my account
    Click Element    ${drp_link_myAccount}

Click on Register
    Click Link    ${link_register}

Click on Login
    Click Link    ${link_login}

I validate account was succesfully created
    ${title}=    Get Title
    Should Be Equal    ${title}    Your Account Has Been Created!




