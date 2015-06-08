class Choice < ActiveRecord::Base
  # Remember to create a migration!
    belongs_to :question
    has_many :users_choices
    has_many :users, through: :users_choices
end
