class DogsController < ApplicationController

  def new
    @dog = Dog.new
    @sexes = Sex.all
    @sizes = Size.all
    @breeds = Breed.all
  end

  def create
  end

end
