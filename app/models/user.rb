class User < ActiveRecord::Base
  attr_accessible :bio, :email

  has_many :posts
  has_many :comments
  has_and_belongs_to_many :blogs
end
