class Mutations::NewPost < GraphQL::Schema::RelayClassicMutation

	argument :params, Types::NewPostAttributes, required: true

  field :posted, Boolean, null: true
  field :errors, [String], null: false

  def resolve(params:)
    post = Post.create!(
      title: params[:title],
      description: params[:description],
      image_ref: params[:image]
    )

  	if !(artist = Artist.find_by(name: params[:artist_name]))
  		artist = new_artist(params[:artist_name])
  	end
  	
  	track = new_track(params[:track_title], artist.id, post.id)

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
  	Track.create!(
      title: title, 
      artist_id: artist_id, 
      post_id: post_id
    )
  end
end

# mutation newPost($x: NewPostInput!) {
#   newPost(input: $x) {
#     posted
#     errors
#   }
# }

# {
#   "x": {"params": {
#     "title": "abc",
#     "description": "def",
#     "image": "ghi",
#     "artistName": "Brandon",
#     "trackTitle": "This is a song"
#   }}
# }