class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  delegate :name, to: :course, prefix: true
  delegate :course_number, to: :course, prefix: true
  delegate :name, to: :user, prefix: true
  validates :course_id, uniqueness: { scope: :user_id, message: "You've already enrolled in this course!" }
end
