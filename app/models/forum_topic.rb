# -*- encoding : utf-8 -*-
class ForumTopic < ActiveRecord::Base
  validates :title, :presence => true
  validates :text,  :presence => true

  has_many :forum_replies
  belongs_to :user

  default_scope :order => "updated_at DESC"

end
