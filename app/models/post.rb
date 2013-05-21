class Post < ActiveRecord::Base
  attr_accessible :blog_id, :content, :title, :user_id

  belongs_to :blog
  belongs_to :user
  has_many :comments
end
