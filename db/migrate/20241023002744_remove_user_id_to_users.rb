class RemoveUserIdToUsers < ActiveRecord::Migration[7.2]
  def change
    remove_index :users, :account_id if index_exists?(:users, :account_id)
    remove_column :users, :account_id, :integer
  end
end
