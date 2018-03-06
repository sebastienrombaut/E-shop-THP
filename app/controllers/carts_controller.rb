class CartsController < ApplicationController
  before_action :authenticate_user!

  def remove
  	@item = Item.find(params[:id]) #on récupère l'item que l'on veut supprimer, grâce au paramétrage des routes
  	@cart = current_user.cart #on récupère le current cart
  	@cart.items.delete(@item) #on supprime l'item sélectionné
  	redirect_to cart_path #on redirige vers la page show
  end

  def show
  	@cart = current_user.cart
  end
end
