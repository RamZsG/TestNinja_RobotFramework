*** Settings ***
Library    SeleniumLibrary
Library    XML
Variables    ../PageObject/Locators.py

*** Keywords ***
I validate I am logged in and in My account
    ${pageTitle}=    Get Title
    Should Be Equal    ${pageTitle}    My Account