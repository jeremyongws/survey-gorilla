class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |q|
      q.integer :survey_id
      q.string :body
      q.timestamps
    end
  end
end
