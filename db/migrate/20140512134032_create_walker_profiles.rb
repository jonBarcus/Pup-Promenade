class CreateWalkerProfiles < ActiveRecord::Migration
  def change
    create_table :walker_profiles do |t|
      t.integer  "neighborhood_id"
      t.integer  "dog_id"
      t.integer  "skill_id"
      t.integer  "recommendation_id"
      t.integer  "walker_id"
      t.timestamps
    end
  end
end
