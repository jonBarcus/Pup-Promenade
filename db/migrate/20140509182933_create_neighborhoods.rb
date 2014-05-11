class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.references  :boro
      t.string      :name
      t.timestamps
    end
  end
end
