# -*- encoding : utf-8 -*-

class User < ActiveRecord::Base
  attr_accessor :password
  
  before_save :set_new_password, :set_picture

  validates_confirmation_of :password, :on => :create
  validates_presence_of :password, :on => :create
  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  validates :username, :length => { :minimum => 3, :maximum => 254 }
  validates :password, :length => { :minimum => 6 }, :on => :create
  validates :email, :length => { :minimum => 7, :maximum => 254 }
  validates_format_of :email, :with => /\b[A-Z0-9._a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ 
  
  has_many :novelties
  has_many :dashboard_entry
  has_many :got_its
  has_many :forum_topics
  has_many :forum_replies

# multiple foreign keys to Relationship
  has_many :from_relationships, 
            :class_name => Relationship, :foreign_key => :from_user_id
  has_many :to_relationships, 
            :class_name => Relationship, :foreign_key => :to_user_id
  
  default_scope :order => "created_at ASC"
  self.per_page = 20

  mount_uploader :picture, UserPictureUploader


  def role 
    if self.admin?
      role = "Администратор"
    elsif self.moonwalker?
      role = "Moonwalker"
    else 
      role = "Потребител"
    end
    role
  end
  
  def display_name
    if self.name
      self.name
    else
      self.username
    end
  end

  def self.authenticate(username, password)
    user = self.find_by_username(username)
    if user
      expected_password = User.encrypt_password(password, user.salt)
      if user.hashed_password != expected_password
        user = nil
      end
    end
    user
  end

  def self.encrypt_password(password, salt)
    Digest::SHA1.hexdigest(salt.to_s + password + salt.to_s)
  end

  private

  def set_new_password
    if password.present?
      self.salt = rand(555555555)
      self.hashed_password = User.encrypt_password(password, self.salt)
    end
  end

  def set_picture
    unless self.picture
      self.picture = UserPictureUploader.default_url
    end
  end
end
