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
	 @sum = calculate_amout
	
	 if @order.save
	   current_user.cart.items = []

	   #UserMailer.welcome_email(@user).deliver_now! #pas encore de compte Mailer

	   @order.items.each do |item|
	   	item.numbersales +=1
	   end

	   
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

  def index
  	if current_user.admin?
  	@orders = Order.all
  	@orders.each do |order|
  		order.items do |item|
  			sum = sum + item.price
  		end
  	end

    @sum = 0
    @total = 0
    else flash[:warning] = "Page réservée aux admins"
    redirect_to root_path
  end
  end


end
