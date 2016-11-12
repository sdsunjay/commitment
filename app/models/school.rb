class School < ActiveRecord::Base
   has_many :user
   validates :name, presence: {message: 'You must enter name of school'}
end
