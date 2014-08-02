class CreateFooditems < ActiveRecord::Migration
  def change
    create_table :fooditems do |t|
      t.string :itemname
      t.integer :rest_id
      t.integer :food_id

      t.timestamps
    end
  end
end
