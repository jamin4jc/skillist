class User < ActiveRecord::Base
  has_many :skills

  def skill_list
    self.skills.map(&:to_s)
  end
end
