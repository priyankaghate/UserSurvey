class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.string :q_type
      t.string :q_text
      t.references :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
  def down
    drop_table :questions 
  end
end
