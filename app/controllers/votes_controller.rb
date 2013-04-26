class VotesController < ApplicationController

  def new

  end

  def show


  end

  def create
    raise params[:id].inspect
    @question = Question.find(params[:question_id])
    user =User.find(session[:current_user_id])

    if @question.votes.nil? # if the question has no votes
      @vote = Vote.create(:number=>1)
      @vote.user = user
      @question.votes << @vote
      redirect_to question_path(@question)
    end
    
     if user.questions.find(params[:question_id]).votes.first.number > 1
        redirect_to question_path(@question) 
      else 
        @votes_number = @question.votes.first.number
        @question.votes.first.update_attributes(:number=>@votes_number+1)
        @vote = @question.votes.first
        user.votes << @vote
        redirect_to question_path(@question)
      end
    
  end

  # def destroy
  # end

  # def update

  # end

  # def edit

  # end

end
