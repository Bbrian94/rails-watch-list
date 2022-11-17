# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 5),
    poster_url: Faker::LoremFlickr.image,
    rating: Faker::Number.decimal(l_digits: 2, r_digits: 1)
  )
end
