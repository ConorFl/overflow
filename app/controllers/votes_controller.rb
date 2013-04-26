class VotesController < ApplicationController

  def upvotes  
     changevotes(params[:class],1) 
 end

def downvotes
     changevotes(params[:class],-1)
end

private
def changevotes(type,howmuch)
      @typeClass = Kernel.const_get(type)
      user =User.find(session[:current_user_id])
      @type = @typeClass.find(params[:id])
      @question = Question.find(params[:question_id])
      if @type.votes.size == 0# if the question has no votes
       @vote = Vote.create(:number=>1)
       @vote.user = user
       @type.votes << @vote
       redirect_to question_path(@question)
     elsif @type.votes.first.number == 1
      redirect_to question_path(@question) 
    else 
      @votes_number = @type.votes.first.number
      @type.votes.first.update_attributes(:number=>@votes_number+howmuch)
      @vote = @type.votes.first
      user.votes << @vote
      redirect_to question_path(@question)
    end 
  end
end
