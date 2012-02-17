# -*- encoding : utf-8 -*-

class AlbumPhotosController < ApplicationController
  before_filter :load_album
  
  # gallery view
  def index
    #AlbumPhotos.per_page = 1 
    @album_photos = @album.album_photos params[:page]
  end

  def new
    @album_photo = @album.album_photos.build
  end

  def edit
    @album_photo = @album.album_photos.find(params[:id])
  end

  def create
    @album_photo = @album.album_photos.build(params[:album_photo])
    
    if @album_photo.save
      redirect_to [@album, @album_photo], notice: 'Снимката бе създадена успешно.' 
    else
      render "new"
    end
  end

  def update
    @album_photo = @album.album_photos.find(params[:id])

    if @album_photo.update_attributes(params[:album_photo])
      redirect_to [@album, @album_photo], notice: 'Снимката бе обновена успешно.' 
    else
      render "edit" 
    end
  end

  def destroy
    @album_photo = @album.album_photo.find(params[:id])
    @album_photo.destroy

    redirect_to album_path @album, notice: 'Снимката бе изтрита успешно.'
  end

  private

  def load_album
    @album = Album.find params[:album_id]
  end
end
