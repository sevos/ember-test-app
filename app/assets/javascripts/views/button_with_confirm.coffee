App.Views or= {}

App.Views.ButtonWithConfirm = Ember.View.extend
  templateName: 'button_with_confirm'

  click: ->
    console.log @, @controller, @context, @parentView, @view
    # if confirm(@message)
      # @callback(@param)