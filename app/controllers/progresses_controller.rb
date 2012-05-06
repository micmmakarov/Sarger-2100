class ProgressesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @challenge = Challenge.find(params[:id])
    if current_user.complete?(@challenge)
      current_user.uncomplete!(@challenge)
    else
      current_user.complete!(@challenge)
    end

    respond_to do |format|
      format.html
      format.js { render "progresses/create.js"}
    end

  end

end
