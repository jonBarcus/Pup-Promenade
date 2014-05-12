class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # this method identifies the current user(WALKER) of our application
  # by checking the database to indentify who the user is
  def current_walker
    @current_walker ||= Walker.find_by(id: session[:user_id])
  end

  # this method identifies the current user(OWNER) of our application
  # by checking the database to indentify who the user is
  def current_owner
    @current_owner ||= Owner.find_by(id: session[:user_id])
  end


  # this method determines whether or not a user(WALKER) is signed
  # in to the application.  This method is important for the
  # main page, as it will determine what is available when
  # a user is on the page
  def walker_logged_in?
    current_walker.present?
  end

  # this method determines whether or not a user(OWNER) is signed
  # in to the application.  This method is important for the
  # main page, as it will determine what is available when
  # a user is on the page
  def owner_logged_in?
    current_owner.present?
  end



  # this allows the above methods to be available elsewhere
  # in the application
  helper_method(:current_owner, :current_walker, :walker_logged_in?, :owner_logged_in?)

end
