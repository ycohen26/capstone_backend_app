class AddGroupToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :group, :string
  end
end
