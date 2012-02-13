class ForumReply < ActiveRecord::Base
  validates_presence_of :text, :forum_topic_id, :user_id

  belongs_to :forum_topic
  belongs_to :user

  default_scope :order => "created_at DESC"
end
