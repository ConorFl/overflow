class UsersController < ActionController::Base

  def index 

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(:name=>params[:user][:name],:email=>params[:user][:email])
    #   :password=>params[:password],
    #   :password_confirmation=>params[:password_confirm])
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.valid?
      @user.save
      @users = User.all 
      render :show
    else 
      render :new
    end
  end

  def show
    @users = User.all
    render :show
  end

  def login_form
    render :login
  end
end

