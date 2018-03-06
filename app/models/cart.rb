class Cart < ApplicationRecord
	has_and_belongs_to_many :items
	belongs_to :user

	validates :user_id, uniqueness: true
end
