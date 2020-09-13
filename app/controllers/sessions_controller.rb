class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: 'User logged in'
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to 'home/index', notice: 'User logged out'
  end
end
