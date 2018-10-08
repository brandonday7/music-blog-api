class Types::NewPostAttributes < Types::BaseInputObject
  argument :title, String, required: true
  argument :description, String, required: true
  argument :artist_name, String, required: true
  argument :track_title, String, required: true
  argument :image, String, required: true
end