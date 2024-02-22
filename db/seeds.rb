# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

honghong = {name: "Honghong", address: "Gieselastrasse, Munich", phone_number:"1234-5678" ,category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"99990000", category: "italian"}
dishoom =  {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number:"70707070", category: "japanese"}
swaad = {name: "Swaad", address: "Hauptbahnhof, Munich", phone_number:"9876543", category: "belgian"}
french_corner = {name: "French Corner", address: "18 Boundary St, France E2 7JE", phone_number:"345345", category: "french"}

[honghong, pizza_east, dishoom, swaad, french_corner].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
