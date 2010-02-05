class User < ActiveRecord::Base
  include Clearance::User

  has_one :profile
  has_many :skills

  after_create :create_new_profile

  def create_profile
    self.profile = Profile.new
  end
end
