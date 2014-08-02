class AddUseraccesstokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :useraccesstoken, :string
  end
end
