class CreateSurveys < ActiveRecord::Migration
  def up
    create_table :surveys do |t|
      t.string :survey_type
      t.timestamps null: false
    end
  end
  def down
    drop_table :surveys 
  end
end
