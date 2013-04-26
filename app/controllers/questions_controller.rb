class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  def create
    @question = current_user.questions.build(params[:question])

    if @question.save
      flash[:notice] = 'Your question was created successfully'
      redirect_to questions_path # => '/questions'
    else
      render 'new'
    end
  end

  def destroy
  end

  def update
    @question = Question.find(params[:id])

    if @question.update_attributes(params[:question])
      redirect_to @question
    else
      render 'edit'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end
end
