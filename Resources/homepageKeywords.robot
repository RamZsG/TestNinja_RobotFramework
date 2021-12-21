*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Set Browser Implicit Wait    3s
    Maximize Browser Window

CLick on my account
    Click Element    ${drp_link_myAccount}

Click on Register
    Click Link    ${link_register}
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
    Click Element    ${radio_newsletterYes}

I agree to privacy policy
    Click Element    ${chkbx_termsAgree}
I click on continue
    Click Button    ${btn_continue}

I validate account was succesfully created
    ${title}=    Get Title
    Should Be Equal    ${title}    Your Account Has Been Created!

Teardown
    Sleep    2.5s
    Close All Browsers