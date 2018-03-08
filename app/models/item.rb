class Item < ApplicationRecord
	has_and_belongs_to_many :carts
	has_and_belongs_to_many :orders

	validates :title, presence: true
	validates :description, presence: true, length: { minimum: 10 }
	validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
   
	has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

   validates :photo, presence: true

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
