class Item < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true, length: { minimum: 10 }
	validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
	validates :image_url, presence: true
end
