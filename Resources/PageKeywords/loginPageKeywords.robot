*** Settings ***
Library    SeleniumLibrary
Variables    ../../PageObject/Locators.py

*** Keywords ***
I enter my valid email
    [Arguments]    ${validEmail}
    Input Text    ${txt_emailLoginid}    ${validEmail}

I enter my valid password
    [Arguments]    ${validPassword}
    Input Password    ${txt_passwordLoginid}    ${validPassword}

I click on the login button
    Click Button    ${btn_login}

I click on forgot password
    Click Link    ${link_forgotPassword}
    