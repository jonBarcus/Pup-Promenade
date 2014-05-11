class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # this method identifies the current user of our application
  # by checking the database to indentify who the user is
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end


  # this method determines whether or not a user is signed
  # in to the application.  This method is important for the
  # main page, as it will determine what is available when
  # a user is on the page
  def logged_in?
    current_user.present?
  end


  # this allows the above methods to be available elsewhere
  # in the application
  helper_method(:current_user, :logged_in?)

end
