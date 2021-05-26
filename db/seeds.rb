# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "91111-1111" , category: "belgian"}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "98888-8888" , category: "italian"}
beirute =  { name: "Beirute", address: "SQN 107, bloco a", phone_number: "97777-7777" , category: "french"}
china_in_box = { name: "China in box", address: "SQN 109 bloco d", phone_number: "95555-5555" , category: "chinese"}
check = { name: "Check", address: "Conchichina", phone_number: "92222-2222" , category: "japanese"}

[dishoom, pizza_east, beirute, china_in_box, check].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"