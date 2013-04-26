class ResponsesController < ApplicationController

  def new
    @type = params[:respondable_type]
    @responding_to_obj = eval(params[:respondable_type].capitalize).find(params[:id])

    # if @type == "question"
    #   @responding_to_obj = Question.find(params[:id])
    # else 
    #   @responding_to_obj = Answer.find(params[:id])
    # end
  end

  def show
    @question = Question.find(params[:id])
    
  end

  def create
    @user = User.find(session[:current_user_id])
    @responding_to_obj = eval(params[:response][:respondable_type]).find(params[:response][:respondable_id])
    @response = Response.create(content: params[:response][:content])
    @responding_to_obj.responses << @response
    @user.responses << @response
    if params[:response][:respondable_type] == "Question"
      @question_id = @response.respondable.id
    else
      @question_id = @response.respondable.question_id
    end
    @answers = @responding_to_obj.answers if @responding_to_obj.class.to_s == 'Question'
    redirect_to "/questions/#{@question_id}"
  end

  def destroy
  end

  def update

  end

  def edit

  end

end
