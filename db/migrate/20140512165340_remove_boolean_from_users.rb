class RemoveBooleanFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :type, :boolean
  end
end
