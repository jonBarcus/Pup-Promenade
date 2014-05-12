class SessionController < ApplicationController

  def new
  end

  # this method will create a new session an make it
  # unique to the current user by searching and finding
  # the id number of the current e-mail address entered
  # by the user.  If successful, it will redirect to the
  # root page.  If not, it will direct the user to the
  # log in page again

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])

      session[:user_id] = user.id
      flash[:success] = "Thanks for logging in!"
      # OPTIMIZE: make specific owner and walker paths for users
      if user.is_a?(Owner)
      redirect_to("/")
      elsif user.is_a?(Walker)
      redirect_to("/")
      else
      render(:new)
      end
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
