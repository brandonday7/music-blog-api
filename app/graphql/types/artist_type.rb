class Types::ArtistType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :name, String, null: false

  field :tracks, [Types::TrackType], null: false

  def tracks
  	object.tracks
  end
end