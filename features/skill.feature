Feature:
  As a craftsman
  I want to list my skills
  So that I can prioritize them

Scenario:
  Given I am a user
  And I have the skills:
    | name     | level |
    | rvm      | 1     |
    | ruby     | 2     |
    | bundler  | 3     |
    | cucumber | 4     |
    | rails 3  | 5     |
  When I am on the skills page
  Then I should see this skill list:
    | Skill    | Level             |
    | rvm      | Beginner          |
    | ruby     | Advanced Beginner |
    | bundler  | Novice            |
    | cucumber | Proficient        |
    | rails 3  | Expert            |
