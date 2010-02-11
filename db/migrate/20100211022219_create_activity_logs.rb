class CreateActivityLogs < ActiveRecord::Migration
  def self.up
    create_table :activity_logs do |t|
      t.text :entry
      t.integer :skill_id

      t.timestamps
    end
  end

  def self.down
    drop_table :activity_logs
  end
end
