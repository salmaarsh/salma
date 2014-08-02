class AddLogintypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :logintype, :integer
  end
end
