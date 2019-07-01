class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :quiz_url
      t.string :quiz_website
      t.integer :results_number

      t.timestamps
    end
  end
end
