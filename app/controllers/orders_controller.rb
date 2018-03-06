class OrdersController < ApplicationController
  def new
  	@order = Order.new
  	@order.items = current_user.cart.items
  	@order.user_id = current_user.id
  	if @order.save
  		current_user.cart.items = []
  	end
  end
end
