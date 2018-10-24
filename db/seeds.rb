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

Post.create!(title: "Oldies I", description: "Iron and Wine cover is cool too", image_ref: "https://www.rhino.com/sites/rhino.com/files/styles/square/public/aod/075992388320.jpg?itok=m1f27u9i")
Post.create!(title: "Oldies II", description: "Strangest music video I've ever seen", image_ref: "https://cdn.albumoftheyear.org/album/remain-in-light.jpg")

Post.create!(title: "Best Band in the World I", description: "Feeling nostaligc", image_ref: "https://i1.sndcdn.com/artworks-000149663235-6fsjeg-t500x500.jpg")
Post.create!(title: "Best Band in the World II", description: "Best new song", image_ref: "https://static.stereogum.com/uploads/2018/05/the-1975-give-yourself-a-try-1527789760-640x640.jpg")

Post.create!(title: "Favourite Frank Songs I", description: "Great piano", image_ref: "https://thefader-res.cloudinary.com/private_images/w_760,c_limit,f_auto,q_auto:best/single-artwork-for-frank-ocean-s-lens_xgecql/single-artwork-for-frank-ocean-s-lens.jpg")
Post.create!(title: "Favourite Frank Songs II", description: "Nice rhyming", image_ref: "https://upload.wikimedia.org/wikipedia/en/thumb/7/7c/Frank_Ocean_Chanel_Cover.jpg/220px-Frank_Ocean_Chanel_Cover.jpg")

Track.create!(title: "This Must Be The Place", artist_id: Artist.all[0].id, post_id: Post.all[0].id)
Track.create!(title: "Once in a Lifetime", artist_id: Artist.all[0].id, post_id: Post.all[1].id)

Track.create!(title: "A Change of Heart", artist_id: Artist.all[1].id, post_id: Post.all[2].id)
Track.create!(title: "Give Yourself a Try", artist_id: Artist.all[1].id, post_id: Post.all[3].id)

Track.create!(title: "Lens", artist_id: Artist.all[2].id, post_id: Post.all[4].id)
Track.create!(title: "Chanel", artist_id: Artist.all[2].id, post_id: Post.all[5].id)


