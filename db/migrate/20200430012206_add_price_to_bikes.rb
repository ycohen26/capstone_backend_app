class AddPriceToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :price, :decimal, precision: 9, scale: 2
  end
end
