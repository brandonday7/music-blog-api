class Types::MutationType < Types::BaseObject
  field :new_post, mutation: Mutations::NewPost
  field :delete_post, mutation: Mutations::DeletePost
end