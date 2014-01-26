class Rating < ActiveRecord::Base
	belongs_to :beer
		
	def to_s
          b=beer_id
          beer=Beer.find_by id: b
          return beer.to_s+ ": " + score.to_s
        end
end
