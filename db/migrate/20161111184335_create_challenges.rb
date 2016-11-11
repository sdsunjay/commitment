class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :course_id, null: false
      t.integer :user_id, null: false
      t.text :question, null: false
      t.integer :points, default: 0, null: false
      t.datetime :release_date, null: false
      t.timestamps null: false
    end
  end
end
