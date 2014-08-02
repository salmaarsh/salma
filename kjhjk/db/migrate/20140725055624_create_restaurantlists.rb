class CreateRestaurantlists < ActiveRecord::Migration
  def change
    create_table :restaurantlists do |t|
      t.string :restaurantname
      t.string :address
      t.string :city
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
