class CreateQuestionTypes < ActiveRecord::Migration
  def change
    create_table :question_types do |t|
      t.string :question_type_name

      t.timestamps null: false
    end
  end
end
