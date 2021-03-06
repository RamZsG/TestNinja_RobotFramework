*** Settings ***
Library    SeleniumLibrary
Variables    ../../PageObject/Locators.py

*** Keywords ***
I add a first name
    [Arguments]    ${firstName}
    Input Text    ${txt_firstNameid}    ${firstName}

I add a last name
    [Arguments]    ${lastName}
    Input Text    ${txt_lastNameid}    ${lastName}
I add an email
    [Arguments]    ${email}
    Input Text    ${txt_emailid}    ${email}
I add a telephone number
    [Arguments]    ${phone}
    Input Text    ${txt_phoneid}    ${phone}
I add a password
    [Arguments]    ${password}
    Input Password    ${txt_passwordid}    ${password}
I confirm the password
    [Arguments]    ${confirm}
    Input Password    ${txt_confirmPasswordid}    ${confirm}
I subscribe to the newsletter
    Click Element   ${radio_newsletterYes}

I agree to privacy policy
    Select Checkbox   ${chkbx_termsAgree}
I click on continue
    Click Button    ${btn_continue}

I validate same email error message displays
    Sleep    2s
    Element Should Be Visible   ${txt_errorMessageSameEmail}
    Page Should Contain    Warning: E-Mail Address is already registered!
