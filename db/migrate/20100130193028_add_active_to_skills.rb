class AddActiveToSkills < ActiveRecord::Migration
  def self.up
    add_column :skills, :active, :boolean, :default => true
  end

  def self.down
    remove_column :skills, :active
  end
end
