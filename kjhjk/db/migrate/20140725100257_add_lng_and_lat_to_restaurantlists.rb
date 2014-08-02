class AddLngAndLatToRestaurantlists < ActiveRecord::Migration
  def change
    add_column :restaurantlists, :lng, :float
    add_column :restaurantlists, :lat, :float
  end
end
