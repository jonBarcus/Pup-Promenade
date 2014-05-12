class RenameSkills < ActiveRecord::Migration
  change_table :skills do |t|
    t.rename :skills, :skill
  end
end
