class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :name
      t.string      :email
      t.string      :phone
      t.string      :password_digest
      t.string      :image_url
      t.boolean     :admin, default: false
      t.boolean     :owner
      t.references  :neighborhood
      t.text        :bio
      t.timestamps
    end
  end
end
