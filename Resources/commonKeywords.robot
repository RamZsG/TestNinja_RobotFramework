*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locators.py
Library    FakerLibrary

*** Variables ***
${Browser}=    gc

*** Keywords ***
Open my browser
    Open Browser    about:blank    ${Browser}
    Maximize Browser Window

Setting and instancing random data
    ${firstName}=     FakerLibrary.First Name
    ${lastName}=    FakerLibrary.Last Name
    ${email}=    FakerLibrary.Email
    ${phone}=    FakerLibrary.Phone Number
    ${password}=    FakerLibrary.Password

    #Setting registration information as Test Suite variables
    Set Suite Variable    ${firstName}    ${firstName}
    Set Suite Variable    ${lastName}    ${lastName}
    Set Suite Variable    ${email}    ${email}
    Set Suite Variable    ${phone}    ${phone}
    Set Suite Variable    ${password}    ${password}

Navigate to
    [Arguments]    ${URL}
    Go To    ${URL}