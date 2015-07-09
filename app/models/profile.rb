class Profile < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :talents
	has_many :ratings

	def average_rating
		if self.ratings.empty?
			average_rating = -1
		else
			average_rating = (self.ratings.average(:rating) * 2).round / 2.0
		end
		average_rating
	end
end
