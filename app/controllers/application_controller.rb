class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def parse_string_to_a(string)
    string.downcase.gsub(' ', '').split(',')
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
