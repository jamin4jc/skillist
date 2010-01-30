require 'spec_helper'

describe "/skills/show.html.erb" do
  include SkillsHelper
  before(:each) do
    assigns[:skill] = @skill = stub_model(Skill,
      :name => "value for name",
      :level => 1,
      :user_id => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end
