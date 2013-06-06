class UsersController < ActionController::Base

 def destroy
    @user = User.find_by_id(params[:user_id])
    @user.destroy
    redirect_to "/users"
  end

  def edit
    @user = User.find_by_id(params[:user_id])
  end

  def update
    @user = User.find_by_id(params[:user_id])
    @user.user_name = params[:user_name]
    @user.password_digest = params[:password_digest]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.user_type = params[:user_type]
    @user.condition_id = params[:condition_id]
    @user.zip_code = params[:zip_code]
    @user.treatments_advised = params[:treatments_advised]
    @user.comments = params[:comments]
    @user.save
    redirect_to "/users"
  end

  def create
    @user = User.new
    @user.user_name = params[:user_name]
    @user.password = params[:password]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.user_type = params[:user_type]
    @user.condition_id = params[:condition_id]
    @user.zip_code = params[:zip_code]
    @user.treatments_advised = params[:treatments_advised]
    @user.comments = params[:comments]
    @user.save
    redirect_to "/users"
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params["user_id"])
  end

  def new
  @user = User.new
  end

end

