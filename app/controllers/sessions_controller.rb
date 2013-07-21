class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    auth['uid'] = auth['uid'].to_s
    user = User.create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id
    redirect_to root_url, :notice => 'Signed in!'
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "授权失败！"
  end

end
