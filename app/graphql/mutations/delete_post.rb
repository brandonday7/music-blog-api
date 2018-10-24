class Mutations::DeletePost < GraphQL::Schema::RelayClassicMutation

	argument :id, ID, required: true

  field :deleted, Boolean, null: true
  field :errors, [String], null: false

  def resolve (id:)
    post = Post.find(id)
    if post 
      track = post.track
      artist = track.artist
      track.delete

      if artist.tracks.length == 1
        artist.delete
      end

      deleted = post.delete

    end
    if deleted
    	{

    		deleted: true,
    		errors: []
    	}
    else 
      {
        deleted: false,
        errors: ["Failed to delete post"]
      }
    end
  rescue ActiveRecord::RecordNotFound      
    {
      deleted: false,
      errors: ["Post not found"]
    }
  end
end

# mutation {
#   deletePost(input: {id: 20}) {
#     deleted
#     errors
#   }
# }