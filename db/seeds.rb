# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Restaurant.destroy_all
puts "Creating 10 restaurants..."

10.times do
  restaurant = Restaurant.new(
    name: Faker::TvShows::TheFreshPrinceOfBelAir.character,
    address: Faker::Address.city,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
    phone_number: Faker::PhoneNumber.cell_phone,
  )
  restaurant.save!
end

puts "Finished creating restaurants..."
