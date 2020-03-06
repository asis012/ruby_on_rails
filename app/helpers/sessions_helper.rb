# frozen_string_literal: true

module SessionsHelper
  def log_in(user)
  
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    reset_session
    @current_user = nil
  end

  def redirect_back_to(default)
    redirect_to (session[:forwarding_url] || default)

    session.delete(:forwarding_url)
    # debugger
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
