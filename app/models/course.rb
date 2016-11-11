class Course < ActiveRecord::Base
   has_many :users, through: :enrollments
   validates :course_name, presence: { message: 'Please enter course number' }
   validates_length_of :name, minimum: 3, maximum: 256, allow_blank: false
   scope :recent, ->{ order("created_at DESC")}
   scope :user_id, -> user_id { where(user_id: user_id) }
   scope :course_id, -> course_id { where(course_id: course_id) }
end
