class Item < ApplicationRecord
	has_and_belongs_to_many :carts

	validates :title, presence: true
	validates :description, presence: true, length: { minimum: 10 }
	validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
	validates :image_url, presence: true
end
