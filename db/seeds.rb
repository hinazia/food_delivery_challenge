# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Meal.destroy_all
Customer.destroy_all

Meal.create(name: "Biryani", price: "20$")
Meal.create(name: "Karhai", price: "10$")
Meal.create(name: "Shaslik", price: "15$")
Meal.create(name: "Kebab", price: "16$")
Meal.create(name: "Pulao", price: "25$")

Customer.create(name: "Hina", address: "Korbinianstr. 56")
Customer.create(name: "Sana", address: "Maxwellstr. 34")
Customer.create(name: "Hina", address: "Instastr. 89")
