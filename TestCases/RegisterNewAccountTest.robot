*** Settings ***
Resource    ../Resources/TutorialNinjaApp.robot
Suite Setup    Setting and instancing random data
Test Teardown    Teardown
Test Setup    Open my browser


*** Test Cases *** ***
Register an account
    [Documentation]    This testcase registers and creates the variables used in the testsuite
    [Tags]    Required
    #Test begins
    Navigate to the registration page
    Enter Registration information
    Validate the account creation

Register first account a second time
    Navigate to the registration page
    Enter Registration information
    I validate same email error message displays
       

Login using a valid account
    Navigate to login page
    Enter valid credentials and log in
    I validate I am logged in and in My account
    

Forgot password for valid account
    Navigate to login page
    Enter credentials for forgotten password
    I validate email is sent out
    