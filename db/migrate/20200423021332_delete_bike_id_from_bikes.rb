class DeleteBikeIdFromBikes < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikes, :bike_id, :integer
  end
end
