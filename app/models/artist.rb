class Artist < ApplicationRecord
	has_many :tracks
	# belongs_to :post, through: :track
	
	validates :name, presence: true, uniqueness: true
end
