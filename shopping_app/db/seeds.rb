# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create categories
5.times do
  Category.create(name: Faker::Commerce.department(max: 1))
end

# Create items
10.times do
  Item.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price, stock_quantity: rand(0..100), category_id: Category.first.id, status: [true, false].sample)
end

10.times do 
  ItemModifier.creare(item_id: Item.all.ids.sample, modifier_id: Modifier.all.ids.sample)
end

# Create modifiers
20.times do
  Modifier.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price, stock_quantity: rand(0..100))
end