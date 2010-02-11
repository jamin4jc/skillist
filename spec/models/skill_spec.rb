require 'spec_helper'

describe Skill do
  it { should belong_to :user }
  it { should have_many :activity_logs }

  it { should validate_presence_of :name } 
end
