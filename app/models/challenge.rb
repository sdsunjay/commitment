class Challenge < ActiveRecord::Base
  has_many :answers
  belongs_to :user
  belongs_to :course
    
  validates :user_id, presence: { message: 'The question must belong to a user'}
  validates :course_id, presence: { message: 'The question must belong to a course'}
  validates :question, presence: { message: 'You must choose a question'}
 
  validates :release_date, presence: { message: 'Departure date and time cannot be blank' }
  validates :release_date, timeliness: {on_or_after: lambda { Date.current }, type: :date}
  validates :points, presence: { message: 'Please specify number of points' }
  validates_length_of :question, minimum: 10, maximum: 256, allow_blank: false
  scope :recent, ->{ order("created_at DESC")}
  scope :user_id, -> user_id { where(user_id: user_id) }
  scope :course_id, -> course_id { where(course_id: course_id) }
 def self.search(start_location, end_location, date)
        ltwd = nil
        gtwd = nil
        if date.present?  
            tmp = DateTime.strptime(date, '%m-%d-%Y')
            ltwd = DateTime.new(tmp.year, tmp.month, tmp.day, 23, 59, 59, 0)
            gtwd = DateTime.new(tmp.year, tmp.month, tmp.day, 0, 0, 0, 0)
        end

        if start_location.present? && !end_location.present? && !date.present?
            p = {
                start_location: start_location
            }.compact
        elsif !start_location.present? && end_location.present? && !date.present?
            p = {
                end_location: end_location
            }.compact
        elsif !start_location.present? && !end_location.present? && date.present?
            p = {
                when_date: (gtwd..ltwd)
            }.compact
        elsif start_location.present? && end_location.present? && !date.present?
            p = {
                start_location: start_location,
                end_location: end_location
            }.compact
        elsif start_location.present? && !end_location.present? && date.present?
            p = {
                start_location: start_location,
                when_date: (gtwd..ltwd)
            }.compact
        elsif !start_location.present? && end_location.present? && date.present?
            p = {
                end_location: end_location,
                when_date: (gtwd..ltwd)
            }.compact
        else
            p = {
                start_location: start_location,
                end_location: end_location,
                when_date: (gtwd..ltwd)
            }.compact
        end

        # if p.present? && date.present?
        #     where(p).
        #     where("when_date >= ? and when_date <= ?", gtez, ltez)
        # elsif p.present?

        if p.present?
            where(p)
        else
            none
        end
    end 
end
