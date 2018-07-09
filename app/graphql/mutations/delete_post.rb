class Mutations::DeletePost < GraphQL::Schema::RelayClassicMutation

	argument :id, ID, required: true

  field :deleted, Boolean, null: true
  field :errors, [String], null: false

  def resolve (id:)
    post = Post.destroy(id)

    if post
    	{
    		deleted: true,
    		errors: []
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