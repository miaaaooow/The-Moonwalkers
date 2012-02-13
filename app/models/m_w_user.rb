class MWUser < ActiveRecord::Base
  validates :username, :presence => true, 
                    :length => {:minimum => 1, :maximum => 254}
                    :uniqueness => true
  
  validates :hashed_password, :presence => true
  
  validates :email, :presence => true,
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :email => true
  
  validates :birthday, :birthdate => true
  
  has_many :novelties
end
