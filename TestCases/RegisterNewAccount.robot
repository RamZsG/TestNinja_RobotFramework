*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource    ../Resources/homepageKeywords.robot

*** Variables ***
${URL}=    http://www.tutorialsninja.com/demo/
${Browser}=    gc

*** Test Cases *** ***
Register an account
    # Setting random data
    ${firstName}=     FakerLibrary.First Name
    ${lastName}=    FakerLibrary.Last Name
    ${email}=    FakerLibrary.Email
    ${phone}=    FakerLibrary.Phone Number
    ${password}=    FakerLibrary.Password

    #Test begins
    Open my browser    ${URL}    ${Browser}
    CLick on my account
    Click on Register
    I add a first name    TestRam${firstName}
    I add a last name    TestRam${lastName}
    I add an email    TestRam${email}
    I add a telephone number    ${phone}
    I add a password    ${password}
    I confirm the password    ${password}
    I subscribe to the newsletter
    I agree to privacy policy
    I click on continue
    I validate account was succesfully created
    Teardown