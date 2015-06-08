class Survey < ActiveRecord::Base
  # Remember to create a migration!
  has_many :questions
  belongs_to :user
  has_many :users_surveys
  has_many :users, through: :users_surveys
end
