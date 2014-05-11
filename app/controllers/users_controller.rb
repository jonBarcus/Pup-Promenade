class UsersController < ApplicationController

  def new
    @user = User.new
  end

  # this method creates the new user using strong
  # params.
  def create
    # creates the new user object using the parameters
    # provided by strong params
    @user = User.new(user_params)

    # if the user successfully saves in to the database
    # the current user will be redirect to root
    # If it is not successful, the user will be redirected
    # to the form
    # OPTIMIZE need to have response for user as account creation
    # OPTIMIZE need to specify what user needs to do different if unsuccessful
    if @user.save
      redirect_to("/")
    else
      render(:new)
    end
  end


  private

    # here are the strong params.  I think you know what
    # is going on here, if not, I recommend Google :P
    def user_params
      params.require(:user).permit(
        :name,
        :email,
        :phone,
        :password,
        :password_confirmation,
        :image_url,
        :owner,
        :neighborhood_id,
        :bio
        )
    end
end
