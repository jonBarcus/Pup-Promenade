class ChangeNeighborhoodidsToArrayInWalkerProfiles < ActiveRecord::Migration
  def change
    remove_column :walker_profiles, :neighborhood_ids, :hstore
    add_column :walker_profiles, :neighborhood_ids, :integer, array: true, default: []
  end
end
