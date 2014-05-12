class WalkersController < ApplicationController

  def index
    @walkers = Walker.all
  end

  def new
    @walker = Walker.new
    @walker.build_walker_profile
  end

  def create
    @walker = Walker.new(walker_params)
    if @walker.save
      redirect_to("/")
    else
      render :new
    end
  end

  def edit
    @walker = Walker.includes(:walker_profile).find(params[:id])
    @walker.build_walker_profile unless @walker.walker_profile
  end

  def show
    @walker = Walker.find(params[:id])
    @walker_profile = @walker.walker_profile
  end

  def destroy
    @walker = Walker.find(params[:id])
    @walker.destroy
    session[:user_id] = nil
    redirect_to "/"
  end

  private

  def walker_params
    params.require(:walker).permit(
      :first_name,
      :last_name,
      :email,
      :phone,
      :image_url,
      :password,
      :password_confirmation,
      :walker_profile_attributes => [:neighborhood_id, :dog_id, :skill_id, :recommendation_id]
      )
  end
end
