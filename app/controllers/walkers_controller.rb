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

  # TODO: build edit functionality
  def edit
    @walker = Walker.includes(:walker_profile).find(session[:user_id])
    @walker.build_walker_profile unless @walker.walker_profile
  end

  # finds the Walker based on the User session id
  # OPTIMIZE: persist the walker profile and edit it rather than rebuilding (needs confirming)
  # The profile in the form in the show view gets rebuilt every time Should persist
  def show
    @walker = Walker.find(session[:user_id])
    @neighborhoods = Neighborhood.where(boro_id: @walker.boro_id)
  end

  def update
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

  # In order to pass an array of id's into the neighborhood_ids paramaeter
  # it has to be passed a value with an empty array.
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
      :walker_profile_attributes => [:neighborhood_ids => []])

                 # TODO: :dog_id, :skill_id, :recommendation_id

  end
end
