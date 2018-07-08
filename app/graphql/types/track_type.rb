class Types::TrackType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :title, String, null: false
  field :artist, Types::ArtistType, null: false
  def artist
  	object.artist
  end
end