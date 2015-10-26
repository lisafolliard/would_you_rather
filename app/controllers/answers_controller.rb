class AnswersController < ApplicationController
  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])

    if params[:upVoteAction] == "upvote"
      @answer.upvote
      redirect_to root_path
    end
  end

end
