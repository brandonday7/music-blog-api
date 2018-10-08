class Mutations::NewPost < GraphQL::Schema::RelayClassicMutation

	argument :params, Types::NewPostAttributes, required: true

  field :posted, Boolean, null: true
  field :errors, [String], null: false

  def resolve (params:)
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
#   newPost(input: {
#     title: "test1",
#     description: "test2",
#     trackTitle: "Reborn",
#     artistName: "Kids See Ghosts",
#     image: "jhdfbnk"
#   }) {
#     posted,
#     errors
#   }
# }