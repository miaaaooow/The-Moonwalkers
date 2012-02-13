class MWUser < ActiveRecord::Base
  validates :birthday, :birthdate => true
  
  belongs_to :user
  
  # multiple foreign keys to Relationship
  has_many :from_relationships, :class_name => Relationship, :foreign_key => :from_mw_user_id
  has_many :to_relationships, :class_name => Relationship, :foreign_key => :to_mw_user_id
end
