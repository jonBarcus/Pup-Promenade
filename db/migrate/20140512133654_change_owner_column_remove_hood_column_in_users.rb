class ChangeOwnerColumnRemoveHoodColumnInUsers < ActiveRecord::Migration
  def change_table :users do |t|
    t.remove :neighborhood_id
    t.rename :owner, :type
  end
end
