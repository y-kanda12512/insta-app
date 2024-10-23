class AddUniqueIndexToAccountName < ActiveRecord::Migration[7.2]
  def change
    add_index :users, :account_name, unique: true
  end
end
