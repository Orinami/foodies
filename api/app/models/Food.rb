class Food < ApplicationRecord
	has_many :orders, :through => :orders
end
