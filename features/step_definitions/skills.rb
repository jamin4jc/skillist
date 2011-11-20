Given /^I am a user$/ do
  @user = User.create(:email => 'joe@gmail.com', :password => 'abc123')
end

Given /^I have the skills:$/ do |table|
  table.hashes.each do |attributes|
    @user.skills.create(attributes)
  end
end

Then /^I should see this skill list:$/ do |table|
  table.hashes.each do |attributes|
    step "I should see \/#{attributes['Skill']}\/ within \"#skill_list\""
    step "I should see \/#{attributes['Level']}\/ within \"#skill_list\""
  end
end
