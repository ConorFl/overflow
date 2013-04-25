class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new 
  end

  def show
    @question = Question.find(params[:id])
    
  end

  def create
    @answer = Answer.create(params[:answer])
    redirect_to root_path
  end

  def destroy
  end

  def update
  end

  def edit
  end

end
