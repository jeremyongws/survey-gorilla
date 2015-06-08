class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |q|
      q.integer :survey_id
      q.string :body
      s.timestamps
    end
  end
end
