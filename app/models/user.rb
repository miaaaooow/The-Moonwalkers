#encoding UTF-8

class User < ActiveRecord::Base
  validates_presence_of  :username, :hashed_password, :email

  validates :username, :length => { :minimum => 1, :maximum => 254 },
                       :uniqueness => true
  
  validates :email, :length => { :minimum => 7, :maximum => 254 },
                    :uniqueness => true#,
                  #  :email => true
    
  has_many :novelties
  has_many :dashboard_entry
  has_many :got_its
  has_many :forum_topics
  has_many :forum_replies
  has_one  :mw_user

# multiple foreign keys to Relationship
  has_many :from_relationships, :class_name => Relationship, :foreign_key => :from_user_id
  has_many :to_relationships, :class_name => Relationship, :foreign_key => :to_user_id





  def role 
    role = "User"
    if self.admin?
      role = "Admin"
    elsif self.moonwalker?
      role = "Moonwalker"
    end
    
    role
  end

  self.per_page = 20

  private

  def create_salt
    self.salt = rand(555555555)
  end 

  def encrypt_password(password, salt)
    Digest::SHA1.hexdigest(salt + password + salt)
  end
end
