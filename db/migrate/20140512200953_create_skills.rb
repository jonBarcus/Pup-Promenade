class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :skills
      t.timestamps
    end
  end
end
