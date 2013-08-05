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

    if answer.is_correct?
      @question = Question.all.sample(1).first
      @correct = true
    else
      #
    end

    respond_to do |format|
      format.js{
        render template:"static_pages/new_game", layout: false
      }
    end
  end
end
