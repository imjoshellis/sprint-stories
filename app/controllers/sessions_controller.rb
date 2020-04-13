class SessionsController < ApplicationController
  def new
    redirect_to root_path unless session[:user_id].nil?
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user&.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
