class CreateItemModifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :item_modifiers do |t|
      t.integer :item_id
      t.integer :modifier_id
      t.boolean :status

      t.timestamps
    end
  end
end
