class DashboardEntry < ActiveRecord::Base
  belongs_to :user

  has_many :got_its
end
