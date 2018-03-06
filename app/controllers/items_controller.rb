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


	private
	def items_params
		params.require(:item).permit(:title, :description, :price, :image_url, :featured, :numbersales)
	end
end
