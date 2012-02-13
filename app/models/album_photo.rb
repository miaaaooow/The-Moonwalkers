class AlbumPhoto < ActiveRecord::Base
  validates :photo_url, :presence => true

  has_one :album

  mount_uploader :photo_url, PhotoUploader
end
