class Rating < ActiveRecord::Base
	belongs_to :beer
		
	def to_s
          b=beer_id
          brewery=Beer.find_by id: b
          return brewery.name+ ": " + score.to_s
        end
end
