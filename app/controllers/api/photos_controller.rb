class Api::PhotosController < ApplicationController
  respond_to :json

  def index
    @photos = Photo.all
    respond_with @photos
  end

  def show
    respond_with photo
  end

  def create
    respond_with Photo.create(photo_params)
  end

  def update
    respond_with photo.update(photo_params)
  end

  def destroy
    respond_with photo.destroy
  end

  private

    def photo
      Photo.find(params[:id])
    end


    def photo_params
      params.require(:photo).permit(:img, :title)
    end

end
