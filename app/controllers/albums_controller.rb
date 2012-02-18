# -*- encoding : utf-8 -*-

class AlbumsController < ApplicationController
  before_filter :require_moonwalker, :except => [:index, :show]

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end
 
  def show
    @album = Album.find params[:id]
    @photos = @album.photos_on_page params[:page] 
  end

  def edit
    @album = Album.find params[:id]
  end

  def create
    @album = Album.new params[:album] 
    
    if @album.save
      redirect_to albums_path, notice: 'Албумът бе създаден успешно.' 
    else
      render "new"
    end
  end

  def update
    @album = Album.find params[:id] 

    if @album.update_attributes params[:album]
      redirect_to albums_path, notice: 'Албумът бе обновен успешно.' 
    else
      render "edit" 
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    redirect_to albums_path, notice: 'Албумът бе изтрит успешно.'
  end
end
