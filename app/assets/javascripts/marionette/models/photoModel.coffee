photoModel = Backbone.Model.extend
  defaults: {
    img: "heheee",
    title: "bangarang"
  }

photoCollection = Backbone.Collection.extend
  url: "/api/photos",
  parse: (response) ->
    response.photos

module.exports = {
  photoModel: photoModel,
  photoCollection: photoCollection
}