class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :user_id, null: false
      t.integer :course_id, null: false
      t.integer :score, default: 0,  null: false

      t.timestamps null: false
    end
  end
end
