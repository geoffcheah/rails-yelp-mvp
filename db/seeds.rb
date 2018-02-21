# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating seeds"

puts "Populating Database"

Restaurant.create(name: "Tozi", address: "Victoria")
Restaurant.create(name: "Goldmine", address: "Bayswater")
Restaurant.create(name: "Sukiyaki Tei", address: "Chelsea")
Restaurant.create(name: "Plum Valley", address: "China Town")
Restaurant.create(name: "The Spoon", address: "Shoreditch")


puts "finished!"
