class SessionsController < ApplicationController

  def index
    redirect_to new_session_path
  end

  
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Signed in!'
    else
      flash.now.alert = 'Invalid login credentials - try again.'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out"
  end

end

 