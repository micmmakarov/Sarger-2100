class ProgressesController < ApplicationController

  def create
    @challenge = Challenge.find(params[:id])
    if current_guy.complete?(@challenge)
      current_guy.uncomplete!(@challenge)
    else
      current_guy.complete!(@challenge)
    end

    respond_to do |format|
      format.html
      format.js { render "progresses/create.js"}
    end

  end

end
