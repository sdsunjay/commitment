class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  before_action :set_user
  before_filter :authenticate_user!

 def index
    #authorize! 
    @users = User.all.order('created_at DESC').paginate(:per_page => 10, :page => params[:page])
    unless current_user.admin? || current_user.super_admin?
      unless @user == current_user
        redirect_to :back, :alert => "Access denied."
      end
    end
  end

  # GET /users/:id.:format
  def show
  end

  # GET /users/:id/edit
  def edit
  end

  # PATCH/PUT /users/:id.:format
  def update
    # authorize! :update, @user
    respond_to do |format|
      if @user.update(user_params)
        sign_in(@user == current_user ? @user : current_user, :bypass => true)
        format.html { redirect_to @user, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/:id.:format
  def destroy
    # authorize! :delete, @user
    @user = User.find(params[:id])
    if @user.destroy
        flash[:notice] = "User Removed"
        redirect_to root_path
    else
        render 'destroy'
    end
  end

  def connect
    @enrollment = Enrollment.new
    @course = Course.find(params[:id])
    if Course.exists?(id: params[:id])
      @enrollment.user_id = current_user.id
      @enrollment.course_id = params[:id]
       if @enrollment.save
	 flash[:notice] = 'You have enrolled'
	 redirect_to course_path(@course)
       else
	 flash[:alert] = "Unable to enroll"
       end
    else
       flash[:alert] = "Unable to enroll"
    end
  end

  private
    def set_user
      @enrollment = Enrollment.new
      @all_courses = Course.all.order(created_at: :desc).paginate(per_page: 5, page: params[:page])
      @user = User.find(current_user.id)
      @courses = current_user.courses.order(created_at: :desc).paginate(per_page: 5, page: params[:page])
      @answers = current_user.answers.order(created_at: :desc).paginate(per_page: 5, page: params[:page])
    end

    def user_params
      accessible = [ :name, :email, :school_id] # extend with your own params
      accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
      params.require(:user).permit(accessible)
    end
end
