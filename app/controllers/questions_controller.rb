class QuestionsController < ApplicationController


  def new
  end

  def show
    @question = Question.find(params[:id])
    @answers =@question.answers

  end

  def create
    @user = User.find(session[:current_user_id])
    @question = Question.create(params[:question])
    @user.questions << @question
    @questions = Question.all
    render :index
  end

  def destroy
  end

  def update
    @question =Question.find(params[:id])
    @question.update_attributes(params[:question])
    @answers = @question.answers
    render :show
  end

  def edit
    @question = Question.find(params[:id])
  end

end
