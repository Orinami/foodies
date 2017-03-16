class Order < ApplicationRecord
	belongs_to :register
	belongs_to :food

	validates :register_id, :food_id, :quantity, :total, presence: true
end
