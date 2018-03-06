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
  	end

end
