class RemoveBooleanAndAddReferencesToUsers < ActiveRecord::Migration
 change_table :users do |t|
    t.remove :type
    t.add_column :users, :type, :references
  end
end
