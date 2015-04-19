Template.tabsLayout.rendered = ->
  Session.set('currentTab', 'tabs.pending')


Template.tabsLayout.events
  'click [data-action=logout]': (event, template) ->
    Meteor.logout()
    IonSideMenu.snapper.close();