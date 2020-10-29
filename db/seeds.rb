# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

for i in 0...10
    name = Faker::Name.unique.name
    bio = Faker::String.unique.random
    Artist.create(name: name, bio: bio)
end

for i in 0...10
    name = Faker::Dessert.unique.variety
    Genre.create(name: name)
end

for i in 0...10
    name = Faker::BossaNova.unique.song
    artist_id = rand(10)
    genre_id = rand(10)
    Song.create(name: name, artist_id: artist_id, genre_id: genre_id)
end