class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new 
  end

  def show
    @question = Question.find(params[:id])
    
  end

  def create
    @answer = Answer.create(:content => params[:answer][:content])
    @question = Question.find(params[:answer][:question_id])
    @user = User.find(session[:current_user_id])
    @question.answers << @answer
    @user.answers << @answer
    redirect_to root_path
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
