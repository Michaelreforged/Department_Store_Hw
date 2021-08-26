# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "faker"

Item.destroy_all
Store.destroy_all

5.times do
  x = Faker::Commerce.department(max: 1)
  s = Store.create(name: "#{x}")
  4.times do
    s.items.create(name: Faker::Commerce.product_name)
  end
end

puts "seeded #{Store.all.size} Stores"
puts "first Store name: #{Store.first.name}"
puts "seeded #{Item.all.size} Items"
puts "first item name: #{Store.first.items.first.name}"