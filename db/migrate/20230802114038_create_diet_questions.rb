class CreateDietQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :diet_questions do |t|
      t.integer :user_id
      t.text :question

      t.timestamps
    end
  end
end
