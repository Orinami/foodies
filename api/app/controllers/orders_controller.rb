class OrdersController < ApplicationController

  	def index
  		orders = Order.all
  		puts orders.to_yaml
  		render json: orders, status: :ok
  	end

	def create
		user_id = params[:user_id]
		food_id = params[:food_id]
		quantity = params[:quantity]

		food_price = Food.find_by_id(food_id)
		price = food_price.price
		total = quantity * price

		order = Order.create(register_id: user_id, food_id: food_id, quantity: quantity, total: total)

		if order.save
			render json: order, status: :ok                  
		else
			render json: order.errors, status: :unprocessable_entity
		end
	end

	def show
		order_id = params[:id]
		orders = Order.joins(:food, :register).where( orders: { id: order_id})
		render json: orders
		
	end

	private
	def order_params
		params.require(:order).permit(:customer_id, :food_id, :quantity, :total)
	end
end
