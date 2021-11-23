# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

12.times do

  Pet.create(
    color: Faker::Color.color_name,
    species: Pet::SPECIES.sample,
    name: Faker::TvShows::SouthPark.character,
    location: Faker::Address.city,
    lost_at: Date.today - rand(100..365)
  )

end
