class AddFbaccesstokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fbaccesstoken, :string
  end
end
