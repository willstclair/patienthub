class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @_current_user ||= session[:user_id] &&
      User.find_by_id(session[:user_id])
  end

end
