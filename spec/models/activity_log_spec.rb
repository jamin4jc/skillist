require 'spec_helper'

describe ActivityLog do
  it { should belong_to :skill }

  it { should validate_presence_of :entry } 
  it { should validate_presence_of :skill_id } 
end
