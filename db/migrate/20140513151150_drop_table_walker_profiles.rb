class DropTableWalkerProfiles < ActiveRecord::Migration
  def change
       drop_table :walker_profiles
  end
end
