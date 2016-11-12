class ChallengesController < ApplicationController

  before_action :set_challenge, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  has_scope :recent, :type => :boolean
  has_scope :course_id
  has_scope :user_id
  has_scope :release_date

  def index
#if(params.has_key?(:release_date) || params.has_key?(:course_id))
#      @challenges = Challenge.search(params[:release_date], params[:course_id]).order(created_at: :desc).paginate(per_page: 10, page: params[:page])
#    else
      @challenges = Challenge.all.order(created_at: :desc).paginate(per_page: 10, page: params[:page])
#    end
  end

  def show
  end

  def new
    @page_title = 'Add Challenge'
    @challenge = current_user.challenges.build
  end

  def create
    @challenge = current_user.challenges.build(challenge_params)
    @challenge.user_id = current_user.id

    # Save the challenge
    if @challenge.save
      flash[:notice] = 'Challenge Created'
      redirect_to courses_path
    else
      flash[:alert] = 'Challenge Not Created'
    end
  end

  def edit
  end

  def update
    # Update the challenge
    if @challenge.update(challenge_params)
      flash[:notice] = 'Challenge Updated'
      redirect_to challenges_path
    else
      flash[:alert] = 'Challenge Not Updated'
      render action: 'edit'
    end
  end

  def destroy

    # Delete the challenge
    if  @challenge.destroy
      flash[:notice] = 'Challenge Removed'
      redirect_to challenges_path
    else
      render 'destroy'
    end
  end

  private


  def set_challenge
    @challenge = Challenge.find(params[:id])
    @user = User.find(params[:user_id])
    @user_challenges = @user.challenges
    @course = Course.find(params[:course_id])
    @course_challenges = @course.challenges
end

  def challenge_params
    params
    .require(:challenge)
    .permit(:course_id, :question, :correct_answer, :release_date, :points, :user_id)
    .merge(user_id: current_user.id)
  end
end
