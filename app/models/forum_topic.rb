# -*- encoding : utf-8 -*-

class ForumTopic < ActiveRecord::Base
  validates_presence_of :title, :text

  has_many :forum_replies
  belongs_to :user

  default_scope :order => "updated_at DESC"
end
