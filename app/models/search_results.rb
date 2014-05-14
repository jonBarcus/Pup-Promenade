# this module will return the results of the search_params in the SearchController

module SearchResults

  def self.new(query_params)

    @results_array = []

    query_params[:neighborhoods].each do |hood|
      walker_prof = WalkerProfile.where("#{hood.to_i} = ANY (neighborhood_ids)")
      if walker_prof[0] != nil
        @results_array << Walker.where(id: walker_prof[0].walker_id)
      end
    end
    binding.pry
    return @results_array[0]

  end

end
