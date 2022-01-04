*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageKeywords/homepageKeywords.robot
Resource    ../Resources/commonKeywords.robot
Resource    ../Resources/PageKeywords/registerPageKeywords.robot
Resource    ../Resources/PageKeywords/loginPageKeywords.robot
Resource    ../Resources/PageKeywords/myAccountPageKeywords.robot
Resource    ../Resources/PageKeywords/forgotPasswordPageKeywords.robot

*** Keywords ***
Navigate to the registration page
    Go To    ${URL}
    CLick on my account
    Click on Register

Enter Registration information
    I add a first name    ${firstName}
    I add a last name    ${lastName}
    I add an email    ${email}
    I add a telephone number    ${phone}
    I add a password    ${password}
    I confirm the password    ${password}
    I subscribe to the newsletter
    I agree to privacy policy
    I click on continue

Validate the account creation
    I validate account was succesfully created

Navigate to login page
    Go To    ${URL}
    CLick on my account
    Click on Login

Enter valid credentials and log in
    I enter my valid email    ${email}
    I enter my valid password    ${password}
    I click on the login button

Enter credentials for forgotten password
    I click on forgot password
    I enter my forgotten email    ${email}
    I click on continue to reset password