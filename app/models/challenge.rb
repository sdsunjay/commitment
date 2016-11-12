class Challenge < ActiveRecord::Base
  has_many :answers
  belongs_to :user
  belongs_to :course
    
  validates :user_id, presence: { message: 'The question must belong to a user'}
  validates :course_id, presence: { message: 'The question must belong to a course'}
  validates :question, 
          :presence => {:message => "Question can't be blank." },
          :uniqueness => {:message => "Questions already exists."}

  validates :release_date, presence: { message: 'Departure date and time cannot be blank' }
  validates :release_date, timeliness: {on_or_after: lambda { Date.current }, type: :date}
  validates :points, presence: { message: 'Please specify number of points' }
  scope :recent, ->{ order("created_at DESC")}
  scope :user_id, -> user_id { where(user_id: user_id) }
  scope :course_id, -> course_id { where(course_id: course_id) }
end
