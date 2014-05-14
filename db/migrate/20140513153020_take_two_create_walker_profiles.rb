class TakeTwoCreateWalkerProfiles < ActiveRecord::Migration
  def change
     create_table "walker_profiles", force: true do |t|
      t.integer  "skill_id"
      t.integer  "recommendation_id"
      t.hstore   "neighborhood_id"
      t.integer  "walker_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
