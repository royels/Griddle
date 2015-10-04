photoView = Backbone.Marionette.ItemView.extend
  tagName: 'div',
  className: 'awesome-div'
  template: _.template(require('../templates/photoTemplate'))

photoCollectionView = Backbone.Marionette.CollectionView.extend
  collectionEvents: {
    sync: "render"
  }
  childView: photoView

module.exports = {
  photoView: photoView,
  photoCollectionView: photoCollectionView
}
