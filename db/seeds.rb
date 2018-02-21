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

# seeding restaurants
tozi = Restaurant.create(name: "Tozi", address: "Victoria", category: "italian")
goldmine = Restaurant.create(name: "Goldmine", address: "Bayswater", category: "chinese")
sukiyaki_tei = Restaurant.create(name: "Sukiyaki Tei", address: "Chelsea", category: "japanese")
plum_valley = Restaurant.create(name: "Plum Valley", address: "China Town", category: "chinese")
the_spoon = Restaurant.create(name: "The Spoon", address: "Shoreditch", category: "french")

# seeding reviews
tozi_review = Review.new(content: "overpriced italian", rating: 2)
tozi_review.restaurant = tozi
tozi_review.save!

goldmine_review = Review.new(content: "Great Chinese food!", rating: 5)
goldmine_review.restaurant = goldmine
goldmine_review.save!

sukiyaki_tei_review = Review.new(content: "Good sukiyaki, but portions small and overpriced", rating: 3)
sukiyaki_tei_review.restaurant = sukiyaki_tei
sukiyaki_tei_review.save!

plum_valley_review = Review.new(content: "Tasy dimsum in Chinatown. Bad service though", rating: 3)
plum_valley_review.restaurant = plum_valley
plum_valley_review.save!

the_spoon_review = Review.new(content: "Homey French food. Tasty!", rating: 2)
the_spoon_review.restaurant = the_spoon
the_spoon_review.save!

puts "finished!"
