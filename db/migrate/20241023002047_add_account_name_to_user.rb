class AddAccountNameToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :account_id,:integer
    add_index :users, :account_id,unique: true
  end
end
