class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :user_comments
      t.integer :user_ratings
      t.integer :bike_id

      t.timestamps
    end
  end
end
