# -*- encoding : utf-8 -*-

class GotIt < ActiveRecord::Base
  validates_presence_of :user_id, :dashboard_entry_id

  belongs_to :user
  belongs_to :dashboard_entry

  default_scope :order => "created_at DESC"
end
