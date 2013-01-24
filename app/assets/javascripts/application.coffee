#= require modernizr
#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require bootstrap
#= require_self
#= require store
#= require routes
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./templates
#= require_tree ./views

window.App = Ember.Application.create()
Ember.LOG_BINDINGS = true
Ember.LOG_STACKTRACE_ON_DEPRECATION = true
Ember.StateManager.LOG_TRANSITIONS = true
