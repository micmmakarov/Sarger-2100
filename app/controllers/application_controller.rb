class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_guy, :in?

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
