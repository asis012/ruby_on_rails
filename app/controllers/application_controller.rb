class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # def index
  #   render html: "Helllo World"
  # end



  include SessionsHelper



  private


  def log_at_first
    unless logged_in?
      store_location
      flash[:danger] = 'login at first'
      redirect_to login_url
    end
  end
end
