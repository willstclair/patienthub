class SessionsController < ApplicationController

  def destroy
    session["user_id"] = nil
    redirect_to "/conditions", notice: "Come back soon!"
  end
  def new
  end

  def create
    user = User.find_by_name(params["user_name"])

    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      redirect_to "/conditions", notice: "Welcome back, #{user.name}"
    else
      redirect_to "/login", notice: "Unknown username or password."
    end

  end
end
