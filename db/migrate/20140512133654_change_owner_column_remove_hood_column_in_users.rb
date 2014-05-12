class ChangeOwnerColumnRemoveHoodColumnInUsers < ActiveRecord::Migration
  change_table :users do |t|
    t.remove :neighborhood_id
    t.rename :owner, :type
  end
end
