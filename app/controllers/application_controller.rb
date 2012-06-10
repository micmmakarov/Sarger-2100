class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_guy, :in?
  before_filter :last_request_at

  def last_request_at
    current_guy.update_attribute(:last_request_at, Time.now) if in?
  end


  def in?
    if user_signed_in?
      current_user
    else
      if temp_signed_in?
        current_temp
      end
    end
  end

  def current_guy
    if user_signed_in?
      current_user
    else
      if temp_signed_in?
        current_temp
      end
    end
  end


end
