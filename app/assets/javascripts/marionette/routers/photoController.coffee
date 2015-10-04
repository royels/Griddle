photoController = Marionette.Object.extend
  initialize: ->
    collectionModel = require('../models/photoModel').photoCollection
    collection = new collectionModel
    collection.fetch()
    collectionView = require('../views/photoView').photoCollectionView
    photoCollectionView = new collectionView
      collection: collection
    App.appRegion.show(photoCollectionView)
    return

photoRouter = Marionette.AppRouter.extend

module.exports = {
  photoController: photoController,
  photoRouter: photoRouter
}