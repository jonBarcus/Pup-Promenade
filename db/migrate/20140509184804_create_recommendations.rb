class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.references    :user
      t.text          :body
      t.timestamps
    end
  end
end
