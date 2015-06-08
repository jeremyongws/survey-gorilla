class CreateCompletedSurveys < ActiveRecord::Migration
  def change
    create_table :completed_surveys do |s|
      s.integer :survey_id
      s.timestamps
    end
  end
end
