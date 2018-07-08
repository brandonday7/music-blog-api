class Post < ApplicationRecord
	has_one :track
	# has_one :artist, through: :track

	validates :title, presence: true
	validates :description, presence: true
end
