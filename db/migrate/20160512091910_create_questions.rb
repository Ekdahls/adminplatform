class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_name
      t.string :c_answer
      t.string :alt1
      t.string :alt2
      t.string :alt3
      t.string :news_url
      t.string :img_url
      t.string :tag
      t.string :news_summary
      t.integer :category_id
      t.integer :question_type_id
      t.date :valid_from
      t.date :valid_to

      t.timestamps null: false
    end
  end
end
