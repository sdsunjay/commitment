class CourseController < ApplicationController

  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  has_scope :recent, :type => :boolean
  has_scope :course_id
  has_scope :user_id
  has_scope :release_date

  def index
      @courses = Course.all.order(created_at: :desc).paginate(per_page: 10, page: params[:page])
  end

  def show
  end

  def new
    @page_title = 'Add Course'
    @course = current_user.courses.build
  end

  def create
    @course = current_user.courses.build(course_params)
    @course.user_id = current_user.id

    # Save the course
    if @course.save
      flash[:notice] = 'Course Created'
      redirect_to courses_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    # Update the course
    if @course.update(course_params)
      flash[:notice] = 'Course Updated'
      redirect_to courses_path
    else
      flash[:alert] = 'Course Not Updated'
      render action: 'edit'
    end
  end

  def destroy

    # Delete the course
    if  @course.destroy
      flash[:notice] = 'Course Removed'
      redirect_to courses_path
    else
      render 'destroy'
    end
  end

  private


  def set_course
    @course = Course.find(params[:id])
    @challenges = Challenge.find(params[:course_id])
  end

  def course_params
    params
    .require(:course)
    .permit(:name, :course_number, :description)
  end
end
