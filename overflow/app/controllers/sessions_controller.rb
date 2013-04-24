class SessionsController < ActionController::Base
  def new
    @user_session = User.new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:current_user_id] = @user.id
      redirect_to '/users/show'
    else 
      render :new
    end
  end
  
  def show
    # redirect_to '/users/show'
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
