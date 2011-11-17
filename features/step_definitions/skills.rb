Given /^I am a user$/ do
  @user = User.create(:email => 'joe@gmail.com', :password => 'abc123')
end

Given /^I have the skills:$/ do |fields|
  fields.rows_hash.each do |skill, level|
    @user.skills.create(:name => skill, :level => level)
  end
end

Then /^I should see my skills:$/ do
  fields.rows_hash.each do |skill|
    Then %{I should see "#{skill}"}
  end
end

