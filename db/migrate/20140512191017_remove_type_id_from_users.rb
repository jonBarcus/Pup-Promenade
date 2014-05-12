class RemoveTypeIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :type_id, :integer
    drop_table :user_types
  end
end
