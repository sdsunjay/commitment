class AlterColumnCourseCourseNumber < ActiveRecord::Migration
def self.up
    change_table :courses do |t|
      t.change :course_number, :string 
    end
  end
  def self.down
    change_table :courses do |t|
      t.change :course_number, :integer
    end
  end
end
