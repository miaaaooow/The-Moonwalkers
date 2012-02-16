# -*- encoding : utf-8 -*-

class Album < ActiveRecord::Base
  
  before_save :set_cover

  validates_presence_of :name

  has_many :album_photos
  
  self.per_page = 9

  default_scope :order => "updated_at DESC"


  mount_uploader :cover, AlbumPhotoUploader

  private
  
  def set_cover
         
  end
end
