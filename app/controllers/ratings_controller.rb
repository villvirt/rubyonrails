class RatingsController < ApplicationController
    def index
	 @ratings = Rating.all
    end
    
    def to_s 
	return "asd"   
    end
 
end
