# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# prdct = Product.create [{ name: 'Coffee Cups', price: '7.8', stock_quantity: '8' }]
#   Character.create(name: 'Luke', movie: movies.first)

676.times do
  product = Product.create(
    title: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    stock_quantity: Faker::Number.number(digits: 4)
  )
end

puts "Product: #{Product.count}"
