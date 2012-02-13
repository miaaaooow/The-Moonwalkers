class Novelty < ActiveRecord::Base
  validates_presence_of :text, :title#, :user_id

  belongs_to :user
  
  default_scope :order => "created_at DESC"

  self.per_page = 5
end
