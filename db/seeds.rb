# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating Cards..."
(1..9).each do |card|
  (card...10).each do |bottom|
    Card.create!(top_number: card, bottom_number: bottom + 1)
  end
end
puts "Successfully created all #{Card.all.count} cards"

puts "Creating NPC's..."
(1..4).each do |player|
  Player.create!(name: "NPC ##{player}")
end
puts "Successfully created all #{Player.all.count} NPC Players"
