class WalkersController < ApplicationController

  def index
    @walkers = Walker.all
  end

  def new
    @walker = Walker.new
    @boros = Boro.all
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
    @walker = Walker.includes(:walker_profile).find(session[:user_id])
    @walker.build_walker_profile unless @walker.walker_profile
  end

  def show
    @walker = Walker.find(session[:user_id])
    @neighborhoods = Neighborhood.where(boro_id: @walker.boro_id)
    binding.pry
    # @walker_profile = @walker.walker_profile
  end

  def update
    binding.pry
    @walker = Walker.find(session[:user_id])
    @walker_profile = @walker.walker_profile
    if @walker.update(walker_params)
      redirect_to("/")
    else
      render :show
    end
  end

  def destroy
    @walker = Walker.find(session[:user_id])
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
      :boro_id,
      :phone,
      :image_url,
      :bio,
      :password,
      :password_confirmation,
      :walker_profile_attributes => [:neighborhood_ids,
                                  :dog_id,
                                  :skill_id,
                                  :recommendation_id]
      )
  end
end
