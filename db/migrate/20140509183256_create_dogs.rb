class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.references  :user
      t.string      :name
      t.integer     :age
      t.references  :sex
      t.references  :breed
      t.references  :size
      t.string      :temperment
      t.text        :description
      t.timestamps
    end
  end
end
