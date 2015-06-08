class CreateUsersSurveys < ActiveRecord::Migration
  def change
    create_table :users_surveys do |u|

      u.integer :user_id
      u.integer :survey_id
      u.timestamps
    end
  end
end
