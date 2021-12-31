*** Settings ***
Library    SeleniumLibrary
Library    XML
Variables    ../PageObject/Locators.py

*** Keywords ***
I enter my forgotten email
    [Arguments]    ${email}
    Input Text    ${txt_forgotEmail}    ${email}

I click on continue to reset password
    Click Button    ${btn_continueFP}

I validate email is sent out
    Wait Until Element Is Visible    ${txt_emailSent}
    Element Should Be Visible    ${txt_emailSent}
    ${confirmationText} =  Get Text    ${txt_emailSent}
    Log To Console  ${confirmationText}
    Page Should Contain    An email with a confirmation link has been sent your email address.

