# -*- encoding : utf-8 -*-

class AlbumPhoto < ActiveRecord::Base
  validates_presence_of :photo_url

  belongs_to :album

  mount_uploader :photo_url, AlbumPhotoUploader

  def photos_on_page(this_page)
    album_photos.paginate :page => this_page, :per_page => AlbumPhotos.per_page
  end
end
