class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  validates :course_id, uniqueness: { scope: :user_id, message: "You've already enrolled in this course!" }
end
