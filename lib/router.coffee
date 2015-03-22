# Public part ==================================================================

Router.route "/",
  controller: 'ApplicationController'
  name: "home"
  template: "home"

Router.route "/bets/pending",
  controller: 'ApplicationController'
  name: "bets.pending"
  template: "betsPending"
  layoutTemplate: "tabsLayout"
  waitOn: ->
    Meteor.subscribe 'pendingBets'

Router.route "/bets/ended",
  controller: 'ApplicationController'
  name: "bets.ended"
  template: "betsEnded"
  layoutTemplate: "tabsLayout"
  waitOn: ->
    Meteor.subscribe 'endedBets'

Router.route "/bets/cleared",
  controller: 'ApplicationController'
  name: "bets.cleared"
  template: "betsCleared"
  layoutTemplate: "tabsLayout"
  # waitOn: ->
  #   Meteor.subscribe 'pendingBets'

Router.route "/bets/new",
  controller: 'ApplicationController'
  name: "bets.new"
  template: "betsNew"

Router.route "/bets/:_id/close",
  controller: 'ApplicationController'
  name: "bets.close"
  template: "betsClose"
  waitOn: ->
    console.log @params._id
    Meteor.subscribe 'bet', @params._id
  data: ->
    Bets.findOne _id: @params._id

Router.route "/bets/:_id/clear",
  controller: 'ApplicationController'
  name: "bets.clear"
  template: "betsClear"
  waitOn: ->
    console.log @params._id
    Meteor.subscribe 'bet', @params._id
  data: ->
    Bets.findOne _id: @params._id


class @ApplicationController extends RouteController
  layoutTemplate: "layout"