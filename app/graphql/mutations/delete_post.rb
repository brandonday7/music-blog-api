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