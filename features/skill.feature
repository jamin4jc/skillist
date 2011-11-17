Feature:
  As a craftsman
  I want to list my skills
  So that I can prioritize them

Scenario:
  Given I am a user
  And I have the skills:
    | rvm     | 1 |
    | ruby    | 4 |
    | bundler | 1 |
  When I am on the skills page
  Then I should see "rvm" within "table"
  And I should see "ruby" within "table"
  And I should see "bundler" within "table"
