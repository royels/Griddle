
window.App = new Backbone.Marionette.Application


App.addInitializer ->
  App.addRegions(appRegion: '#application-container')
#  there needs to be a controller action here
  controller = require('./routers/photoController').photoController
  photoController = new controller
  router = require('./routers/photoController').photoRouter
  photoRouter = new router controller: photoController
  Backbone.history.start()


$(document).ready ->
  App.start()


module.exports = {
  App: App
}