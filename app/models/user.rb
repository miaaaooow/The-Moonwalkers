class User < ActiveRecord::Base
  validates :username, :presence => true, 
                    :length => {:minimum => 1, :maximum => 254}
                    :uniqueness => true
  
  validates :hashed_password, :presence => true
  
  validates :email, :presence => true,
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :email => true
    
  has_many :novelties
  has_many :dashboard_entry
  has_many :got_its
  has_many :forum_topics
  has_many :forum_replies
  has_one  :mw_user

  private

  def create_salt
      self.salt = rand(555555555)
  end 

  def encrypt_password(password, salt)
    Digest::SHA1.hexdigest(salt + password + salt)
  end
end
