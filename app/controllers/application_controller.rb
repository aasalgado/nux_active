class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  
private

  helper_method :current_user 

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_path, alert: 'You Must Sign In To Check Out' if current_user.nil?
  end 

  def show
  end

end
