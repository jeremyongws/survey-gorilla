class CreateUsersChoices < ActiveRecord::Migration
  def change
    create_table :users_choices do |u|
      u.integer :user_id
      u.integer :choice_id
    end
  end
end
