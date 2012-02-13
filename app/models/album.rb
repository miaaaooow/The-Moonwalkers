class Album < ActiveRecord::Base
  validates :name, :presence => true

  has_many: :album_photos
end
