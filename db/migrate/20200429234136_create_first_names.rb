class CreateFirstNames < ActiveRecord::Migration[6.0]
  def change
    create_table :first_names do |t|
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
