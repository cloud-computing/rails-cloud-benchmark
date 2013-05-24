# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    new_users = FactoryGirl.create_list(:user, 12500)
    
    new_users.each do |user|
      blog = FactoryGirl.create(:blog)
      blog.users << user
      post = FactoryGirl.create(:post, user: user, blog: blog)
      FactoryGirl.create(:comment, user: user, post: post)
    end
    
