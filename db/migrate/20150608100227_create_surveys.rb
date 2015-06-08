class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |s|

     s.integer :user_id
     s.timestamps
   end
  end
end
