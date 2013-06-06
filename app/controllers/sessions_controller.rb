class SessionsController < ApplicationController

  def destroy
    session["user_id"] = nil
    redirect_to "/conditions", notice: "Come back soon!"
  end
  def new
  end

  def create
    user = User.find_by_user_name(params["user_name"])

    if user && user.authenticate(params["password"])
      session["user_id"] = user.user_id
      redirect_to "/conditions", notice: "Welcome back, #{user.first_name}"
    else
      redirect_to "/login", notice: "Unknown username or password."
    end

  end
end
