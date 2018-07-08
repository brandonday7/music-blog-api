class Types::PostType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :title, String, null: false
  field :description, String, null: false

  field :track, Types::TrackType, null: true
  def track 
  	object.track
  end

  field :artist, Types::ArtistType, null: false
  def artist
  	object.track.artist
  end
end