class Profile < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :talents
	has_many :ratings

	def average_rating
		(ratings.average(:rating) * 2).round / 2.0
	end
end
