class Answer < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :user

  validates :user_id, presence: { message: 'The answer must belong to a user'}
  validates :challenge_id, presence: { message: 'You must choose a question'}
end
