# -*- encoding : utf-8 -*-
class GotIt < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :dashboard_entry_id, :presence => true

  belongs_to :user
  belongs_to :dashboard_entry

  default_scope :order => "created_at DESC"
end
