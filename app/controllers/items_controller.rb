class ItemsController < ApplicationController
  def index
  	@items = Item.all
    @itemsfeatured  = []

      @items.each do |item|
        if item.featured 
          @itemsfeatured << item
        end
      end
    
        @itemsfeatured
  end

  def new
  	@item = Item.new
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
  	@item = Item.find(params[:id])
  end

  def update
  	@item = Item.find(params[:id])
    if @item.update(item_params)
			redirect_to @item
	else render 'edit'
	end
  end


	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to root_path
	end

  def add_cart
    if user_signed_in?
      @item = Item.find(params[:id])
      @cart = current_user.cart 
    
        if @cart
        @cart.items << @item 
        redirect_to items_path
       else 
        @cart = current_user.create_cart
        @cart.items << @item 
        redirect_to items_path
       end

    else redirect_to new_user_session_path
    end
  end


	private
	def items_params
		params.require(:item).permit(:title, :description, :price, :photo, :featured, :numbersales)
	end
end
