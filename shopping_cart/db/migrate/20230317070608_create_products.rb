class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price

      t.timestamps
    end

    Product.create(name: 'Watch', price: 3000.0)
    Product.create(name: 'Ear Buds', price: 5000.0)
    Product.create(name: 'Iphone', price: 50000.0)
  end
end
