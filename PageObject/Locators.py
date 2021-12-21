#Homepage
#Top Menu
drp_link_myAccount="xpath://a[@title='My Account']"
link_register="link:Register"
link_login="link:Login"


# Store menu
link_destktop="link:Desktops"

############################################################
# Registration page
txt_firstNameid="id:input-firstname"
txt_lastNameid="id:input-lastname"
txt_emailid="id:input-email"
txt_phoneid="id:input-telephone"
txt_passwordid="id:input-password"
txt_confirmPasswordid="id:input-confirm"
radio_newsletterYes="xpath:(//input[@name='newsletter'])[1]"
radio_newsletterNo="xpath:(//input[@name='newsletter'])[2]"
chkbx_termsAgree="name:agree"
btn_continue="xpath://input[@value='Continue']"
txt_errorMessageSameEmail="xpath:(//div[i])[text()=' Warning: E-Mail Address is already registered!']"
#txt_errorMessageSameEmail="css:[xpath='1']"

#############################################################
# Account Login page
txt_emailLoginid="id:input-email"
txt_passwordLoginid="id:input-password"
btn_login="xpath://input[@value='Login']"
link_forgotPassword="link:Forgotten Password"

#############################################################
# My account page


#############################################################
# Forgotten password page
txt_forgotEmail="id:input-email"
btn_continueFP="xpath://input[@value='Continue']"
btn_backFP="link:Back"
txt_emailSent="xpath:(//div[i])[text()=' An email with a confirmation link has been sent your email address.']"