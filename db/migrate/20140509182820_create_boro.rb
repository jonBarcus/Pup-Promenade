class CreateBoro < ActiveRecord::Migration
  def change
    create_table :boros do |t|
      t.string :name
      t.timestamps
    end
  end
end
