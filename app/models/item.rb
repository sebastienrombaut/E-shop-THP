class Item < ApplicationRecord
	has_and_belongs_to_many :carts
	has_and_belongs_to_many :orders

  has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }


	validates :title, presence: true
	validates :description, presence: true, length: { minimum: 10 }
	validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
  validates :photo, presence: true
   # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/


  scope :recent, -> { order("created_at") }
  scope :oldest, -> { order(created_at: :desc) }
  scope :best, -> { order(numbersales: :desc) }
  scope :atoz, -> { order("title") }
  scope :cheap, -> { order("price") }
  scope :expensive, -> { order(price: :desc) }
   

end
