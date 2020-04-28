class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.integer :bike_id
      t.integer :seller_id
      t.integer :buyer_id
      t.string :brand
      t.string :model
      t.string :size
      t.string :speeds
      t.string :plates
      t.string :frame_material
      t.string :fork_material
      t.string :year_of_purchase
      t.string :wheels
      t.string :aestetic_condition
      t.string :mechanical_condition
      t.boolean :has_pedals
      t.boolean :original_receipt
      t.boolean :im_a_shop
      t.boolean :negotiable_price

      t.timestamps
    end
  end
end
