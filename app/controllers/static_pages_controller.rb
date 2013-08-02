class StaticPagesController < ApplicationController
  def index
  end

  def new_question
  end

  def new_game
    respond_to do |format|
      format.js { render layout:false }
    end
    
  end
end
