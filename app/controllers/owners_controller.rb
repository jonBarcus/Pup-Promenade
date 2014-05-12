class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
    @owner.build_owner_profile
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to("/")
    else
      render :new
    end
  end

  def edit
    @owner = Owner.includes(:owner_profile).find(params[:id])
    @owner.build_owner_profile unless @owner.owner_profile
  end

  def show
    @owner = Owner.find(params[:id])
    @owner_profile = @owner.owner_profile
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy
    session[:user_id] = nil
    redirect_to "/"
  end

  private

  def owner_params
    params.require(:owner).permit(
      :first_name,
      :last_name,
      :email,
      :phone,
      :image_url,
      :password,
      :password_confirmation,
      :owner_profile_attributes => [:neighborhood_id, :dog_id]
      )
  end
end
