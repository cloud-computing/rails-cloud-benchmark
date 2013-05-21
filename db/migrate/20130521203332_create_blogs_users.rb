class CreateBlogsUsers < ActiveRecord::Migration
  def change
    create_table :blogs_users, :id => false do |t|
      t.references :blog, :null => false
      t.references :user, :null => false
    end

    add_index(:blogs_users, [:blog_id, :user_id], :unique => true)
  end
end
