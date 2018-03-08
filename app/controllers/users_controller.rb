class UsersController < ApplicationController

  def administrator

     @items = Item.all
     @orders = Order.all

  end

  def show
  	 @user = current_user
     
     @orders = current_user.orders

     @orders = current_user.orders
  	 @orders.each do |order|
  		order.items do |item|
  			sum = sum + item.price
  		end
  	end

    @sum = 0
    @total = 0
    

  end
end
