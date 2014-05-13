class WelcomeController < ApplicationController

  def index
    if owner_logged_in?
      @dogs = Dog.where(user_id: current_owner.id)
    end
  end

end
