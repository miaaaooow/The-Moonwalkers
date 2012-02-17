# -*- encoding : utf-8 -*-

class Relationship < ActiveRecord::Base
  belongs_to :from_user, :class_name => User
  belongs_to :to_user, :class_name => User
  
  validates_presence_of :type, :from_user_id, :to_user_id
end
