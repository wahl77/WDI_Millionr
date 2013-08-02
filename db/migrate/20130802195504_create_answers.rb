class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question
      t.string :string
      t.boolean :is_correct_answer, default: :false

      t.timestamps
    end
    add_index :answers, :question_id
  end
end
