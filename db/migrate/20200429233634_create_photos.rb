class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.integer :bike_id

      t.timestamps
    end
  end
end
