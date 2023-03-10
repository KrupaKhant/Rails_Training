class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :category_id
      t.integer :stock_quantity
      t.boolean :status

      t.timestamps
    end
  end
end
