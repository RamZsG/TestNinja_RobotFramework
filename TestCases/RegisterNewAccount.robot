*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/homepageKeywords.robot
Resource    ../Resources/commonKeywords.robot
Resource    ../Resources/registerPageKeywords.robot
Resource    ../Resources/loginPageKeywords.robot
Resource    ../Resources/myAccountPageKeywords.robot
Resource    ../Resources/forgotPasswordPageKeywords.robot
Suite Setup    Setting and instancing random data
Suite Teardown    Teardown
Test Setup    Open my browser


*** Variables ***
${URL}=    http://www.tutorialsninja.com/demo/
${Browser}=    gc

*** Test Cases *** ***
Register an account
    [Documentation]    This testcase registers and creates the variables used in the testsuite
    [Tags]    Required
    #Test begins
    Go To    ${URL}
    CLick on my account
    Click on Register
    I add a first name    ${firstName}
    I add a last name    ${lastName}
    I add an email    ${email}
    I add a telephone number    ${phone}
    I add a password    ${password}
    I confirm the password    ${password}
    I subscribe to the newsletter
    I agree to privacy policy
    I click on continue
    I validate account was succesfully created
    Teardown

Register first account a second time
    Go To    ${URL}
    CLick on my account
    Click on Register
    I add a first name    ${firstName}
    I add a last name    ${lastName}
    I add an email    ${email}
    I add a telephone number    ${phone}
    I add a password    ${password}
    I confirm the password    ${password}
    I subscribe to the newsletter
    I agree to privacy policy
    I click on continue
    I validate same email error message displays
    Teardown

Login using a valid account
    Go To    ${URL}
    CLick on my account
    Click on Login
    I enter my valid email    ${email}
    I enter my valid password    ${password}
    I click on the login button
    I validate I am logged in and in My account
    Teardown

Forgot password for valid account
    Go To    ${URL}
    CLick on my account
    Click on Login
    I click on forgot password
    I enter my forgotten email    ${email}
    I click on continue to reset password
    I validate email is sent out
    Teardown