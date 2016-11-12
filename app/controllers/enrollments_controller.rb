class EnrollmentsController < ApplicationController
  
  before_action :set_enrollment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @page_title = 'Enroll'
    @enrollment = current_user.enrollments.build
  end

  def create
    @enrollment = current_user.enrollments.build(enrollment_params)
    @enrollment.user_id = current_user.id

    # Save the enrollment
    if @enrollment.save
      flash[:notice] = 'Challenge Created'
      redirect_to courses_path
    else
      render 'new'
    end
  end
  def index
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private


  def set_enrollment
    @enrollment = Enrollment.find(params[:id])
    @user = User.find(params[:user_id])
    @user_courses = @user.courses
end

  def enrollment_params
    params
    .require(:challenge)
    .permit(:course_id, :user_id)
    .merge(user_id: current_user.id)
  end
end
