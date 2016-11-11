class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id, null: false
      t.integer :challenge_id, null: false
      t.text :attempt, null: false

      t.timestamps null: false
    end
  end
end
