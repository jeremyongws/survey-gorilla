class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :surveys
  has_many :users_surveys
  has_many :completed_surveys, through: :users_surveys
  has_many :users_choices
  has_many :choices, through: :users_choices
end
