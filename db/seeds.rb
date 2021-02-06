# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

puts "preparing seeds"
puts "creating users"

User.destroy_all

5.times do

  user = User.create!(
    email: Faker::Internet.email,
    password: "123456",
    name: Faker::Name.unique.name
  )
  file = URI.open("https://media3.s-nbcnews.com/j/newscms/2019_33/2203981/171026-better-coffee-boost-se-329p_67dfb6820f7d3898b5486975903c2e51.fit-1240w.jpg")
  user.photo.attach(io: file, filename: '171026-better-coffee-boost-se-329p_67dfb6820f7d3898b5486975903c2e51.fit-1240w.jpg', content_type: 'image/jpg')
  # Translator.create!(
  #   languages: ["Jersey English", "Japanese", "German", "Canadian", "hipster"].sample,
  #   description: Faker::GreekPhilosophers.quote,
  #   rates: [1, 2, 3, 4, 5].sample,
  #   availability: [true, false].sample,
  #   user: user
  # )
end
puts "creating translators"

  Translator.create!(
    [

      {
        languages: "Japanese, English",
        description: "I am a native Japanese speaker, also fluent in English. I can help with everyday translating documents, and interpretation at places such as; City Hall, the Hospital, and other government run institutions.",
        rates: 3000,
        availability: [true, false].sample,
        user: User.all[0]
      },

      {
        languages: "German, English",
        description: "I am a native German speaker, also fluent in English. I can interpretat German to English, and English to German for any business meeting, I am also able to translate financial documents",
        rates: 5000,
        availability: [true, false].sample,
        user: User.all[1]
      },

      {
        languages: "Japanese, English",
        description: "I am a native English speaker, with N1 level Japanese. I can help with everyday translating everyday documents from Japanese into English, I also interpret for tour groups",
        rates: 2500,
        availability: [true, false].sample,
        user: User.all[2]
      },

      {
        languages: "French, English",
        description: "I am a native French speaker, fluent in English. I mainly to interpretations for events, such as car shows, tech conferences, political events, and new stories.",
        rates: 11000,
        availability: [true, false].sample,
        user: User.all[3]
      },

      {
        languages: "Spanish, English",
        description: "I am native in both Spanish, and English, I specialize in the tech industry translation, and interpretation, for government entities. I mainly focus on translating between companies and the government regulators. I can cover everything from board meetings, to government policy meetings.",
        rates: 22000,
        availability: [true, false].sample,
        user: User.all[4]
      }

    ]
  )



puts "creating plain users"
10.times do
  User.create!(
    email: Faker::Internet.email,
    password: "123456",
    name: Faker::Name.unique.name
  )
end

puts "Seeding complete"
