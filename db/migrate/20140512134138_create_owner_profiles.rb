class CreateOwnerProfiles < ActiveRecord::Migration
  def change
    create_table :owner_profiles do |t|
      t.integer  "neighborhood_id"
      t.integer  "dog_id"
      t.integer  "owner_id"
      t.timestamps
    end
  end
end
