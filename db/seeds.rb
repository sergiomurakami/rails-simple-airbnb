# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Faker::Config.locale = 'en-AU'

10.times do |index|
  Flat.create!(
    name: Faker::Lovecraft.deity,
    address: Faker::Address.street_address,
    description: Faker::Lovecraft.paragraph,
    photo_url: Faker::LoremPixel.image("50x60"),
    price_per_night: Faker::Number.between(50, 250),
    number_of_guests: Faker::Number.between(1, 12)
  )
end

puts "Done!"
