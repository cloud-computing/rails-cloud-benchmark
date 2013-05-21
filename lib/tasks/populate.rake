require 'factory_girl'
 
namespace :db do
  desc "Populate the database with some sample data"
  task :populate, [:count] => [:environment] do |t, args|
    args.with_defaults(:count => 100)
    puts "Resetting the database"
    Rake::Task['db:reset'].invoke
    puts "Creating #{args[:count]} users"
    new_users = FactoryGirl.create_list(:user, args[:count].to_i)
    puts "Creating 1 blog, 3 posts, and 9 comments for each user"
    new_users.each do |user|
      blog = FactoryGirl.create(:blog)
      blog.users << user
      posts = FactoryGirl.create_list(:post, 3, user: user, blog: blog)
      posts.each do |post|
        FactoryGirl.create_list(:comment, 3, user: user, post: post)
      end
    end
    puts "Done!"
  end
end