class HomeController < ApplicationController



  def index
  end
  def win
  end
  def active_users

    @users = User.where("last_request_at between (?) and (?)", Time.now - 7.day, Time.now)
    @temps = Temp.where("last_request_at between (?) and (?)", Time.now - 7.day, Time.now)

    @active_users = @users + @temps
  end

end
