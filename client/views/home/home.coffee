Template.home.events
  'click [data-action=sign-in-facebook]': (event, template) ->
    Meteor.loginWithFacebook {}, (error)->
      if error
        console.log error

# Template.signIn.events 'click [data-action=sign-in]': (event, template) ->
#   Meteor.loginWithMeteorDeveloperAccount {}, (error) ->
#     if error
#       alert error
#     else
#       IonModal.close()
#     return
#   return