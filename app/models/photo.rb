# -*- encoding : utf-8 -*-

class Photo < ActiveRecord::Base
  validates_presence_of :photo

  belongs_to :album

  mount_uploader :photo, AlbumPhotoUploader
end
