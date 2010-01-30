class AddUserAttributes < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :location, :string
    add_column :users, :web, :string
    add_column :users, :bio, :string, :limit => 4000
  end

  def self.down
    remove_column :users, :username
    remove_column :users, :location
    remove_column :users, :web
    remove_column :users, :bio
  end
end
