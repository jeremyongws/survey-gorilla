class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |c|
      c.integer :question_id
      c.string :body
      c.timestamps
    end
  end
end
