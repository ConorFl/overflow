class UsersController < ApplicationController

  def index 
    @questions = Question.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
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

end

