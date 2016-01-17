photoView = Backbone.Marionette.ItemView.extend
  tagName: 'li',
  className: 'block'
  template: _.template(require('../templates/photoTemplate'))
  events: {
    'click .block': 'sendText'
  }
  sendText: ->
    console.log this.model.get('title')
    that = this
    $.post('/api/twilio', { text: that.model.get('title')})

photoCollectionView = Backbone.Marionette.CollectionView.extend
  collectionEvents: {
    sync: "render"
  }
  childView: photoView

module.exports = {
  photoView: photoView,
  photoCollectionView: photoCollectionView
}
