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

Track.create!(title: "This Must Be The Place", artist_id: 1, post_id: 1, image_link: "https://www.rhino.com/sites/rhino.com/files/styles/square/public/aod/075992388320.jpg?itok=m1f27u9i")
Track.create!(title: "Once in a Lifetime", artist_id: 1, post_id: 2, image_link: "https://cdn.albumoftheyear.org/album/remain-in-light.jpg")

Track.create!(title: "A Change of Heart", artist_id: 2, post_id: 3, image_link: "https://i1.sndcdn.com/artworks-000149663235-6fsjeg-t500x500.jpg")
Track.create!(title: "Give Yourself a Try", artist_id: 2, post_id: 4, image_link: "https://static.stereogum.com/uploads/2018/05/the-1975-give-yourself-a-try-1527789760-640x640.jpg")


Track.create!(title: "Lens", artist_id: 3, post_id: 5, image_link: "https://thefader-res.cloudinary.com/private_images/w_760,c_limit,f_auto,q_auto:best/single-artwork-for-frank-ocean-s-lens_xgecql/single-artwork-for-frank-ocean-s-lens.jpg")
Track.create!(title: "Chanel", artist_id: 3, post_id: 6, image_link: "https://upload.wikimedia.org/wikipedia/en/thumb/7/7c/Frank_Ocean_Chanel_Cover.jpg/220px-Frank_Ocean_Chanel_Cover.jpg")


