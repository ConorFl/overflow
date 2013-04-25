module ApplicationHelper
  def logged_in?
    session[:current_user_id].nil? ? false : true
  end


end
