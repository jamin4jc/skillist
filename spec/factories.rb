Factory.sequence :email do |n|
  "user#{n}@example.com"
end

Factory.define :user do |user|
  user.email                 { Factory.next :email }
  user.password              { "password" }
  user.password_confirmation { "password" }
end

Factory.define :email_confirmed_user, :parent => :user do |user|
  user.email_confirmed { true }
end

Factory.define :activity_log do |activity_log|
  activity_log.entry { "Some kind of text" }
  activity_log.association :skill
end

Factory.define :skill do |skill|
  skill.name { "Fishin" }
end
