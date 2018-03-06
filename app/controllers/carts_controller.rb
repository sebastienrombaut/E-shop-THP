class CartsController < ApplicationController
  before_action :authenticate_user!

  def add
  end

  def remove
  	@item = Item.find(params[:id])
  	@cart = current_user.cart
  	@cart.items.delete(@item)
  	redirect_to cart_path
  end

  def show
  	@cart = current_user.cart
  end
end
