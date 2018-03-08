class OrdersController < ApplicationController
  
  def calculate_amout
  	@cart = current_user.cart
    @sum = 0
    @cart.items.each do |item| 
      @sum = @sum + item.price
    end
    @sum  
  end

  def new

	 @amount = calculate_amout.to_i

	 @order = Order.new
	 @order.items = current_user.cart.items
	 @order.user_id = current_user.id
	 #debugger
	 if @order.save
	   current_user.cart.items = []
	   #redirect_to orders_new_path
	 end

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )
	
	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'eur'
	  )

	 rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to cart_path(current_user.cart)
  end


end
