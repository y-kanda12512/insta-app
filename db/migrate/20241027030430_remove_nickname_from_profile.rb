class RemoveNicknameFromProfile < ActiveRecord::Migration[7.2]
  def change
    remove_column :profiles, :nickname,:string
  end
end
