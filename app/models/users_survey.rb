class UsersSurvey < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :completed_survey
end
