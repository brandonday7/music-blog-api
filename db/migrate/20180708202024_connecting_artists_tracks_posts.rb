class ConnectingArtistsTracksPosts < ActiveRecord::Migration[5.0]
  def change
  	add_reference :tracks, :artist, foreign_key: true
  	add_reference :tracks, :post, foreign_key: true
  end
end
