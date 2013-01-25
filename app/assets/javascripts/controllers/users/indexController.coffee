App.UsersIndexController = Ember.ArrayController.extend
  delete: (user)->
    if confirm("Are you sure that you want to remove #{user.get('fullName')}")
      user.deleteRecord()
      @store.commit()
