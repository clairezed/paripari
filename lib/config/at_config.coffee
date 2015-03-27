AccountsTemplates.configure
  # Behaviour
  confirmPassword: true               #true
  defaultState: "signIn"              #"signIn"
  enablePasswordChange: true          # false
  enforceEmailVerification: false     # false
  forbidClientAccountCreation: false  # false
  overrideLoginErrors: true           # true
  sendVerificationEmail: false        # false
  redirectTimeout: 4000               # 2000
  socialLoginStyle: "popup"           # "popup"
  lowercaseUsername: false            # false

  # Appearance
  # defaultLayout: undefined            # undefined
  hideSignInLink: false               # false
  hideSignUpLink: false               # false
  showAddRemoveServices: false        # false
  showForgotPasswordLink: false       # false
  showLabels: true                    # true
  showPlaceholders: true              # true

  # Client-side Validation
  continuousValidation: false         # false
  negativeValidation: false            # false
  positiveValidation: false            # false
  negativeFeedback: false             # false
  positiveFeedback: false              # false
  showValidating: false                # false

  # Links
  homeRoutePath: '/bets/pending'      # "/"
  # privacyUrl: undefined               # undefined
  # termsUrl: undefined                 # undefined "'terms-of-use'"

  # Hooks
  # onLogoutHook: myLogoutFunc
  # onSubmitHook: mySubmitFunc

  # Texts
  texts:
    button: signUp: 'Register Now!'
    socialSignUp: 'Register'
    socialIcons: 'meteor-developer': 'fa fa-rocket'
    title: forgotPwd: 'Recover Your Passwod'
