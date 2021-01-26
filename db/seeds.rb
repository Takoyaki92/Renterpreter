# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "preparing seeds"
puts "creating users & translators"


5.times do

  user = User.create!(
    email: Faker::Internet.email,
    password: "123456",
    name: Faker::Name.unique.name
  )
  Translator.create!(
    languages: ["Jersey English", "Japanese", "German", "Canadian", "hipster"].sample,
    description: Faker::GreekPhilosophers.quote,
    rates: [1, 2, 3, 4, 5].sample,
    availability: [true, false].sample,
    user: user
  )

end
puts "creating plain users"
10.times do
  User.create!(
    email: Faker::Internet.email,
    password: "123456",
    name: Faker::Name.unique.name
  )
end

puts "Seeding complete" 
