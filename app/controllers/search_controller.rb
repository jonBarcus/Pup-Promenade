class SearchController < ApplicationController

  def index
    @owner = current_owner
    @neighborhoods = Neighborhood.where(boro_id: @owner.boro_id)
  end

  def results
    # this will call a module that will return results
  end


  private

  def search_params
    params.permit(neighborhoods: [])
  end

end
