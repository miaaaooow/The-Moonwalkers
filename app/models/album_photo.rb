# -*- encoding : utf-8 -*-
class AlbumPhoto < ActiveRecord::Base
  validates :photo_url, :presence => true

  belongs_to :album

  mount_uploader :photo_url, PhotoUploader
end
