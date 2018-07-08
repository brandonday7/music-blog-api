class Track < ApplicationRecord
	belongs_to :artist
	belongs_to :post

	validates :title, presence: true, uniqueness: true
end
