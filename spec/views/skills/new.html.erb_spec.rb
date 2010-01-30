require 'spec_helper'

describe "/skills/new.html.erb" do
  include SkillsHelper

  before(:each) do
    assigns[:skill] = stub_model(Skill,
      :new_record? => true,
      :name => "value for name",
      :level => 1,
      :user_id => 1
    )
  end

  it "renders new skill form" do
    render

    response.should have_tag("form[action=?][method=post]", skills_path) do
      with_tag("input#skill_name[name=?]", "skill[name]")
      with_tag("input#skill_level[name=?]", "skill[level]")
      with_tag("input#skill_user_id[name=?]", "skill[user_id]")
    end
  end
end
