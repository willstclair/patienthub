class UserController < ActionController::Base

 def destroy
    m = User.find_by_id(params["user_id"])
    m.destroy
    redirect_to "/users"
  end

  def edit
    @user = User.find_by_id(params["user_id"])
  end

  def update
    @user = User.find_by_id(params["user_id"])
    @user.type = params[:type]
    @user.condition = params[:condition]
    @user.location = params[:location]
    @user.save
    redirect_to "/users"
  end

  def create
    @user = User.new
    @user.type = params[:type]
    @user.condition = params[:condition]
    @user.location = params[:location]
    @user.save
    redirect_to "/users"
  end

  def index
    @users = user.all
  end

  def show
    @user = user.find_by_id(params["user_id"])
  end

  def new
  @user = User.new
  end

end

