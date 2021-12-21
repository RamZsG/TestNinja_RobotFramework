*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    ../Resources/homepageKeywords.robot
Resource    ../Resources/registerPageKeywords.robot
Resource    ../Resources/loginPageKeywords.robot
Resource    ../Resources/myAccountPageKeywords.robot
Resource    ../Resources/forgotPasswordPageKeywords.robot

*** Variables ***
${URL}=    http://www.tutorialsninja.com/demo/
${Browser}=    headlessChrome

*** Test Cases *** ***
Register an account
    [Documentation]    This testcase registers and creates the variables used in the testsuite
    [Tags]    Required
    # Setting random data
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

    #Test begins
    Open my browser    ${URL}    ${Browser}
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
    Open my browser    ${URL}    ${Browser}
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
    Open my browser    ${URL}    ${Browser}
    CLick on my account
    Click on Login
    I enter my valid email    ${email}
    I enter my valid password    ${password}
    I click on the login button
    I validate I am logged in and in My account
    Teardown

Forgot password for valid account
    Open my browser    ${URL}    ${Browser}
    CLick on my account
    Click on Login
    I click on forgot password
    I enter my forgotten email    ${email}
    I click on continue to reset password
    I validate email is sent out
    Teardown