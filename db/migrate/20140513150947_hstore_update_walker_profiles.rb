class HstoreUpdateWalkerProfiles < ActiveRecord::Migration
  def change
    remove_column :walker_profiles, :neighborhood_id, :integer
  end
end
