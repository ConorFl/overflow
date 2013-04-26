class SessionsController < ApplicationController
  def new
    @user_session = User.new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:current_user_id] = @user.id
      redirect_to '/users/show'
    else 
      flash[:notice] = "Invalid email and password"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
