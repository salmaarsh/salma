class CreateFoodcategories < ActiveRecord::Migration
  def change
    create_table :foodcategories do |t|
      t.string :foodname
      t.integer :rest_id

      t.timestamps
    end
  end
end
