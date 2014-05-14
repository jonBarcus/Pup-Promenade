# this module will return the results of the search_params in the SearchController

module SearchResults

  def self.new(query_params)

    @results_array = []

    # OPTIMIZE Adjust results of search
    # if you want to return ONLY the exact matches
    # for example:  If two neighborhoods are selected, do we
    # want to return only the walkers that operate in BOTH
    # those neighborhoods, or all the walkers that operate in
    # ANY of those neighborhoods
    query_params[:neighborhoods].each do |hood|
      # walker_prof will be the profiles of the walkers that operate in the
      # specified neighborhood (by id)
      walker_prof = WalkerProfile.where("#{hood.to_i} = ANY (neighborhood_ids)")
      if walker_prof[0] != nil
        @results_array << Walker.where(id: walker_prof[0].walker_id)
      end
    end
    # This returns an array of walker objects that are uniq
    # So, while the @results_array may be populated with two of the same walkers
    # the return will eliminate the duplicate objects
    return @results_array[0].uniq

  end

end
