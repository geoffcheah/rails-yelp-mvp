# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "desroying previous seeds"
Restaurant.destroy_all

puts "Creating seeds"

puts "Populating Database"

Restaurant.create(name: "Tozi", address: "Victoria", category: "italian")
Restaurant.create(name: "Goldmine", address: "Bayswater", category: "chinese")
Restaurant.create(name: "Sukiyaki Tei", address: "Chelsea", category: "japanese")
Restaurant.create(name: "Plum Valley", address: "China Town", category: "chinese")
Restaurant.create(name: "The Spoon", address: "Shoreditch", category: "french")


puts "finished!"
