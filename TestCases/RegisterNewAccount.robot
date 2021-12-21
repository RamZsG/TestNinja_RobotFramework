*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    ../Resources/homepageKeywords.robot

*** Variables ***
${URL}=    http://www.tutorialsninja.com/demo/
${Browser}=    gc

*** Test Cases *** ***
Register an account
    Open my browser    ${URL}    ${Browser}
    CLick on my account
    Click on Register
    ${firstName}     FakerLibrary.First Name
    I add a first name    TestRam${firstName}
    ${lastName}=    FakerLibrary.Last Name
    I add a last name    TestRam${lastName}
    ${email}=    FakerLibrary.Email
    I add an email    TestRam${email}
    ${phone}=    FakerLibrary.Phone Number
    I add a telephone number    ${phone}
    ${password}=    FakerLibrary.Password
    I add a password    ${password}
    I confirm the password    ${password}
    I subscribe to the newsletter
    I agree to privacy policy
    I click on continue
    I validate account was succesfully created
    Teardown