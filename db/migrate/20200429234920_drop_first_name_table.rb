class DropFirstNameTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :first_names
  end
end
