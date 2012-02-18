# -*- encoding : utf-8 -*-

class PhotosController < ApplicationController
  before_filter :load_album
  before_filter :require_moonwalker, :except => [:index, :show]

  # gallery view
  def index
    #AlbumPhotos.per_page = 1 
    @photos = @album.photos params[:page]
  end

  def new
    @photo = @album.photos.build
  end

  def show
    @photo = @album.photos.find params[:id]
  end

  def create
    @photo = @album.photos.build(params[:photo])
    
    if @photo.save
      redirect_to @album, notice: 'Снимката бе създадена успешно.' 
    else
      render "new"
    end
  end

  def destroy
    @photo = @album.photos.find(params[:id])
    @photo.destroy

    redirect_to album_path @album, notice: 'Снимката бе изтрита успешно.'
  end

  private

  def load_album
    @album = Album.find_by_id params[:album_id]
  end
end
