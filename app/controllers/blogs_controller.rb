class BlogsController < ApplicationController

  def index
    offset = rand(1..Blog.count - 10)
    @blogs = Blog.limit(10).offset(offset)
  end

  def show
    @blog = Blog.find_by_id(rand(1..Blog.count))
  end

end