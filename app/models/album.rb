# -*- encoding : utf-8 -*-

class Album < ActiveRecord::Base
  
  before_save :set_cover

  validates_presence_of :name

  has_many :photos
  
  default_scope :order => "updated_at DESC"
  self.per_page = 9

  mount_uploader :cover, AlbumPhotoUploader

  def photos_on_page(this_page)
    photos.paginate :page => this_page
  end

  private

  def set_cover
    self.cover = self.photos.first unless self.cover      
  end
end
