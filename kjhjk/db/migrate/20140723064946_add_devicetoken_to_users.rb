class AddDevicetokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :devicetoken, :string
  end
end
