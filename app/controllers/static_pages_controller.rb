class StaticPagesController < ApplicationController
   def home
	  	@items = Item.all
	  	@itemsfeatured  = []
	  	@items.each do |item|
	  		if item.featured 
	  			@itemsfeatured << item
	        end
	  	end
  	
        @itemsfeatured = @itemsfeatured.sample(3)

        sales = Hash.new
        @items.each do |item|
        	sales[item] = item.numbersales
        end
        sales.sort_by { |h, i| h[i] }

   end

   def about

   end


end
