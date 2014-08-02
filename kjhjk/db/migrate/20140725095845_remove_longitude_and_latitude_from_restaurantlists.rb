class RemoveLongitudeAndLatitudeFromRestaurantlists < ActiveRecord::Migration
  def change
    remove_column :restaurantlists, :longitude, :string
    remove_column :restaurantlists, :latitude, :string
  end
end
