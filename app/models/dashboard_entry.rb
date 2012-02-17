# -*- encoding : utf-8 -*-
class DashboardEntry < ActiveRecord::Base
  validates_presence_of :content

  belongs_to :user

  has_many :got_its
end
