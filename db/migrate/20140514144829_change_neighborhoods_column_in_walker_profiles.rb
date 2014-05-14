class ChangeNeighborhoodsColumnInWalkerProfiles < ActiveRecord::Migration
  def change
    remove_column :walker_profiles, :neighborhood_id, :hstore
    add_column :walker_profiles, :neighborhood_ids, :hstore
  end
end
