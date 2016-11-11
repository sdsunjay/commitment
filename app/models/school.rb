class School < ActiveRecord::Base
   belongs_to :user
   validates :name, presence: {message: 'You must enter name of school'}
end
