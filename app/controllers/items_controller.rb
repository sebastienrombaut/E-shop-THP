class ItemsController < ApplicationController
   attr_accessor :itemsfeatured

 

 def featured_items
  @items = Item.all
    @itemsfeatured  = []

      @items.each do |item|
        if item.featured 
          @itemsfeatured << item
        end
      end
    @itemsfeatured
 end



  def index
 @itemsfeatured = featured_items
  end

    def sort_atoz
        @itemslast = Item.all.last(3)


    respond_to do |format|
      format.html 
      format.js  
    end

  end

  def new
    if current_user.admin?
  	@item = Item.new
  else flash[:warning] = "Page réservée aux admins"
    redirect_to root_path
  end
  end

  def create
  	@item = Item.new(items_params)
  	if @item.save
      flash[:success] = "Vous avez créé un nouveau produit !"
	    	redirect_to @item
	 else render 'new'
	end
  end

  def show
  	@item = Item.find(params[:id])
  end

  def edit
    if current_user.admin?
  	@item = Item.find(params[:id])
     else flash[:warning] = "Page réservée aux admins"
    redirect_to root_path
  end
  end

  def update
  @item = Item.find(params[:id])
        if @item.update(items_params)
    			redirect_to @item
    	else render 'edit'
    	end
  end


  def add_cart
    if user_signed_in?
      @item = Item.find(params[:id])
      @cart = current_user.cart 
    
        if @cart
        @cart.items << @item
        flash[:success] = "Le produit a bien été ajouté à votre panier !" 
        redirect_to items_path
       else 
        @cart = current_user.create_cart
        @cart.items << @item 
        flash[:success] = "Le produit a bien été ajouté à votre panier !" 
        redirect_to items_path
       end

    else redirect_to new_user_session_path
         flash[:danger] = "Vous devez vous connecter pour ajouter des produit au panier !"
    end
  end

  def destroy #le controller est là mais la fonction destroy n'est pas encore implémentée dans l'app
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

 






  def recent
 @itemsfeatured = featured_items
 @items = Item.recent
 render 'items/index'
end

def oldest
 @itemsfeatured = featured_items
 @items = Item.oldest
 render 'index'
end

def best
 @itemsfeatured = featured_items
 @items = Item.best
 render 'index'
end

def atoz
 @itemsfeatured = featured_items
 @items = Item.atoz
 render 'index'
end

def cheap
 @itemsfeatured = featured_items
 @items = Item.cheap
 render 'index'
end

def expensive
 @itemsfeatured = featured_items
 @items = Item.expensive
 render 'index'
end

	private
	def items_params
		params.require(:item).permit(:title, :description, :price, :photo, :featured, :numbersales)
	end
end
