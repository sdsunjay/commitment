class AddCorrectAnswerToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :correct_answer, :text
  end
end
