class OwnersController < ApplicationController
  def index
    @owners = owner.all
  end

  def new
    @owner = owner.new
    @owner.build_owner_profile
  end

  def create
    @owner = owner.new(owner_params)
    if @owner.save
      redirect_to("/")
    else
      render :new
    end
  end

  def edit
    @owner = owner.includes(:owner_profile).find(params[:id])
    @owner.build_owner_profile unless @owner.owner_profile
  end

  def show
    @owner = owner.find(params[:id])
    @owner_profile = @owner.owner_profile
  end

  def destroy
    @owner = owner.find(params[:id])
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
