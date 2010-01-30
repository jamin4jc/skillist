require 'spec_helper'

describe "/skills/index.html.erb" do
  include SkillsHelper

  before(:each) do
    assigns[:skills] = [
      stub_model(Skill,
        :name => "value for name",
        :level => 1,
        :user_id => 1
      ),
      stub_model(Skill,
        :name => "value for name",
        :level => 1,
        :user_id => 1
      )
    ]
  end

  it "renders a list of skills" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
