class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(session_params[:username])
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

  private
      def session_params
        params.permit(:username, :password)
      end

end
