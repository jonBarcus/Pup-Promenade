class AddBoroToOwner < ActiveRecord::Migration
  def change
    add_column :users, :boro_id, :integer
  end
end
