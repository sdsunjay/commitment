class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name, limit: 255, default: "", null: false
      t.integer :course_number, null: false
      t.text :description

      t.timestamps null: false
    end
  end

  def self.down
     drop_table :courses
  end

end
