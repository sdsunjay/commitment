class AnswersController < ApplicationController

  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  has_scope :recent, :type => :boolean
  has_scope :course_id
  has_scope :user_id

#def create
#    @question = Question.find params[:question_id]
#
#    answer = Answer.create answer_params
#    answer.user = current_user

  #  @question.answers << answer

#  end

  def new
    @page_title = 'Add Answer'
    @challenge = Challenge.find(params[:challenge_id])
    @course = Course.find(params[:course_id])
    @answer = current_user.answers.build
  end

  def create
    @answer = current_user.answers.build(answer_params)
    @answer.user_id = current_user.id
    @answer.challenge_id = params[:challenge_id]

    # Save the answer
    if @answer.save
      redirect_to course_path(params[:course_id])
      flash[:notice] = 'Answer Created'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    # Update the answer
    if @answer.update(answer_params)
      flash[:notice] = 'Answer Updated'
      redirect_to answers_path
    else
      flash[:alert] = 'Answer Not Updated'
      render action: 'edit'
    end
  end

  def destroy

    # Delete the answer
    if  @answer.destroy
      flash[:notice] = 'Answer Removed'
      redirect_to answers_path
    else
      render 'destroy'
    end
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
    @challenge = Challenge.find(params[:challenge_id])
    @user = User.find(params[:user_id])
  end

  def answer_params
    @challenge = Challenge.find(params[:challenge_id])
    params
    .require(:answer)
    .permit(:attempt, :points)
    .merge(user_id: current_user.id, challenge_id: @challenge.id)
  end
end
