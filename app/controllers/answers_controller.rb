class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new 
  end

  def show
    @question = Question.find(params[:id])
    
  end

  def create
    @answer = Answer.create(params[:answer])
    @user = User.find(session[:current_user_id])
    @user.answers << @answer
    redirect_to root_path
  end

  def destroy
  end

  def update
    @answer =Answer.find(params[:id])
    @answer.update_attributes(params[:answer])
    @question = Question.find(@answer.question_id)
    @answers = @question.answers
    redirect_to "/questions/#{@question.id}"
  end

  def edit
    @answer= Answer.find(params[:id])
  end

end
