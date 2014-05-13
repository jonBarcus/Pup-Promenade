class DogsController < ApplicationController

  # the NEW method loads all the required data
  # from the database and stores them in to the
  # instance variables SEXES, SIZES, BREEDS that
  # are used on the add a dog menu
  def new
    @dog = Dog.new
    @sexes = Sex.all
    @sizes = Size.all
    @breeds = Breed.all
  end

  def create
    @dog= Dog.new(dog_params)
    if @dog.save
      redirect_to("/")
    else
      render :new
    end
  end


  private

  def dog_params
    params.require(:dog).permit(
      :name,
      :age,
      :sex_id,
      :breed_id,
      :size_id,
      :temperment,
      :description,
      :user_id)
  end

end
