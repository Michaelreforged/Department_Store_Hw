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

# 5.times do
#   x = Faker::Commerce.department(max: 1)
#   s = Store.create(name: "#{x}")
#   4.times do
#     s.items.create(name: Faker::Commerce.product_name)
#   end
# end

d1 = Store.create(name:"Music")
d2 = Store.create(name:"Board Games")
d3 = Store.create(name:"Movies")
d4 = Store.create(name:"Computer")
d5 = Store.create(name:"Kids")

d1i1 = d1.items.create(name:"CD", price:"5.00")
d1i2 = d1.items.create(name:"MP3(Digital Download Vouchers)", price:"3.50")
d2i1 = d2.items.create(name:"WingSpan", price:"60.00")
d2i2 = d2.items.create(name:"Betrayal at house on the hill", price:"35.00")
d3i1 = d3.items.create(name:"Marvel", price:"10.00")
d3i2 = d3.items.create(name:"DC:AU", price:"10.00")
d4i1 = d4.items.create(name:"Ryzen 5900X", price:"500.00")
d4i2 = d4.items.create(name:"EVGA RTX 3080", price:"810.00")
d5i1 = d5.items.create(name:"Nerf Dart Guns", price: "25.00")
d5i2 = d5.items.create(name:"Bikes", price:"150.00")

puts "seeded #{Store.all.size} Stores"
puts "first Store name: #{Store.first.name}"
puts "seeded #{Item.all.size} Items"
puts "first item name: #{Store.first.items.first.name}"