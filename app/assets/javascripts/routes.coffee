App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'users', ->
    @route 'new',
    @route 'show',
      path: '/:user_id'
    @route 'edit',
      path: '/:user_id/edit'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.UsersRoute =  Ember.Route.extend
  setupController: ->
    @controllerFor('application').set('currentRoute', 'users')

App.UsersIndexRoute = App.UsersRoute.extend
  model: ->
    App.User.find()
  setupController: (controller, model) ->
    @_super()
    controller.set('users', model)

App.UserRoute = App.UsersRoute.extend
  model: (params) ->
    App.User.find(params.user_id)
  setupController: (controller, model) ->
    controller.set('content', model)
    @_super()
App.UsersShowRoute = App.UserRoute.extend()
App.UsersEditRoute = App.UserRoute.extend()

App.UsersNewRoute = App.UsersRoute.extend
  model: ->
    App.User.createRecord()
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)
