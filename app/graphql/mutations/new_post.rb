class Mutations::NewPost < GraphQL::Schema::RelayClassicMutation

	argument :title, String, required: true
	argument :description, String, required: true
	argument :track_title, String, required: true
	argument :artist_name, String, required: true
	argument :image, String, required: true

  field :posted, Boolean, null: true
  field :errors, [String], null: false

  def resolve (title:, description:, track_title:, artist_name:, image:)
  	post = Post.create!(title: title, description: description, image_ref: image)

  	if !(artist = Artist.find_by(name: artist_name))
  		artist = new_artist(artist_name)
  	end
  	
  	track = new_track(track_title, artist.id, post.id)

  	{
  		posted: true,
  		errors: []
  	}
  rescue ActiveRecord::RecordInvalid   		
		{
			posted: false,
			errors: ["Invalid Entry"]
		}
  end

  private

  def new_artist name
  	Artist.create!(name: name)
  end

  def new_track (title, artist_id, post_id)
  	Track.create!(title: title, artist_id: artist_id, post_id: post_id)
  end
end

# mutation {
#   signUp(input: {
#     name: "Brandon Day", 
#     email: "brandon@autzu.com", 
#     password: "12345678", 
#     organization: "Autzu"
#   }) {
#     signedUp,
#     errors
#   }
# }