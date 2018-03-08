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
        

        @itembest = @items.order("numbersales")[0..2]
        
        @itemsnew = @items.order("created_at").last(3)
       

        

   end

   def about

   end


end
