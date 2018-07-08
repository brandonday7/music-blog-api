class Types::QueryType < Types::BaseObject
  field :get_posts, [Types::PostType], null: false,
    description: "Returns all posts"
  def get_posts
   	Post.all
  end

  field :get_tracks, [Types::TrackType], null: false,
    description: "Returns all tracks"
  def get_tracks
   	Track.all
  end

  field :get_artists, [Types::ArtistType], null: false,
    description: "Returns all artsits"
  def get_artists
   	Artist.all
  end
end
