class ApplicationController < ActionController::Base
  protect_from_forgery

  def login!(user)
    session[:current_user_id] = user.id
  end

  def logout!
    session.delete(:current_user_id)
  end

  def current_user
    @current_user ||= User.find_by_id(session[:current_user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  helper_method :current_user, :logged_in?
end
