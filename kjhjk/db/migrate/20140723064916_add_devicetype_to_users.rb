class AddDevicetypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :devicetype, :string
  end
end
