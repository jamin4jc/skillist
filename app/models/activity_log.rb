class ActivityLog < ActiveRecord::Base
  belongs_to :skill

  validates_presence_of :skill_id, :entry
end
