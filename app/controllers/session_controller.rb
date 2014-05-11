class SessionController < ApplicationController

  def new
  end


  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])

      session[:user_id] = user.id
      redirect_to("/")
    else
      render(:new)
    end
  end

  # this method will end the session and allow a user to
  # the site to sign in to the application using the browser
  # that was being used previously
  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end


end
