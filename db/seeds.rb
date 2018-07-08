# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Artist.create!(name: "Talking Heads")
Artist.create!(name: "The 1975")
Artist.create!(name: "Frank Ocean")

Post.create!(title: "Day 1", description: "Favourite song")
Post.create!(title: "Day 2", description: "Today's commute")

Post.create!(title: "Day 3", description: "Feeling nostaligc")
Post.create!(title: "Day 4", description: "Best new song")

Post.create!(title: "Day 5", description: "Great single")
Post.create!(title: "Day 6", description: "Nice rhyming")

Track.create!(title: "This Must Be The Place", artist_id: 1, post_id: 1)
Track.create!(title: "Once in a Lifetime", artist_id: 1, post_id: 2)

Track.create!(title: "A Change of Heart", artist_id: 2, post_id: 3)
Track.create!(title: "Give Yourself a Try", artist_id: 2, post_id: 4)


Track.create!(title: "Lens", artist_id: 3, post_id: 5)
Track.create!(title: "Chanel", artist_id: 3, post_id: 6)


