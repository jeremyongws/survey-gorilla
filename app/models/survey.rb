class Survey < ActiveRecord::Base
  # Remember to create a migration!
  has_many :questions
  belongs_to :user
  has_many :completed_surveys
  has_many :choices, through: :questions

end
