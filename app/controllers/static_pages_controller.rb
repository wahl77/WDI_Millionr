class StaticPagesController < ApplicationController
  def index
    @num_players = params[:num_players].to_i || 3
  end

  def new_question
  end

  def new_game
    @correct = true
    @question = Question.all.sample(1).first
    respond_to do |format|
      format.js { render layout:false }
    end

  end

  def validate_answer
    @correct = false
    answer = Answer.find(params[:id])
    @answer_id = answer.id

    if answer.is_correct?
      @question = Question.all.sample(1).first
      @correct = true
    else
      @correct_answer_id = Answer.find(@answer_id).correct_answer_id
    end

    respond_to do |format|
      format.js{
        render template:"static_pages/new_game", layout: false
      }
    end
  end
end
