class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :albums, :email, unique: true
  end
end
