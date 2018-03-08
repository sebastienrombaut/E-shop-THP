class UsersController < ApplicationController

  def admin
  	if current_user.admin?
     @user = User.find(params[:id])
     @items = Item.all
     @orders = Order.all
    else 
    	redirect_to root_path
    end
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
    

  end
end
