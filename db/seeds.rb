# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    new_users = FactoryGirl.create_list(:user, 1000)
    
    new_users.each do |user|
      blog = FactoryGirl.create(:blog)
      blog.users << user
      posts = FactoryGirl.create_list(:post, 3, user: user, blog: blog)
      posts.each do |post|
        FactoryGirl.create_list(:comment, 3, user: user, post: post)
      end
    end
    
