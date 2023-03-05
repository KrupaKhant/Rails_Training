class AddIndexToFirstname < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :firstname
  end
end
