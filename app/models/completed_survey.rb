class CompletedSurvey < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :survey
  has_many :users_surveys
  has_many :users, through: :users_surveys
end
