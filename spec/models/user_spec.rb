require 'spec_helper'

describe User do
  it { should have_one :profile }
  it { should have_many :skills }
end
