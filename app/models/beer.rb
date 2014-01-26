class Beer < ActiveRecord::Base
	belongs_to :brewery
	has_many :ratings

	
	def average_rating
	  ratings = Rating.where beer_id: self.id
	  avg = (ratings.pluck(:score)).inject([0.0,0]){|sum,n|[sum.first+n,sum.last+1]}
	  return avg.first/avg.last
	  #ratings= Rating.where beer_id: self.id
	  #avg=0
          #ratings.each do |rating|
	  #   avg=avg+rating.score.to_f
 	  #end
	#avg=avg/ratings.count
	#return avg.to_f
	end
   
       def to_s
          return brewery.name + ": " + name 
       end
end
