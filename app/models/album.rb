class Album < ActiveRecord::Base
  validates :name, :presence => true

  has_many :album_photos
  
  default_scope :order => "updated_at DESC"

  def set_cover
    
  end
end
