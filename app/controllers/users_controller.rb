class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.new(user_params)

    if @user.save
      redirect_to("/")
    else
      render(:new)
    end
  end


  private

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
