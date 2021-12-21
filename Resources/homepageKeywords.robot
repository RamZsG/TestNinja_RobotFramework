*** Settings ***
Library    SeleniumLibrary
Library    XML
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

Click on Login
    Click Link    ${link_login}

I validate account was succesfully created
    ${title}=    Get Title
    Should Be Equal    ${title}    Your Account Has Been Created!




Teardown
    Sleep    2.5s
    Close All Browsers