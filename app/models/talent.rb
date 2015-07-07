class Talent < ActiveRecord::Base
	has_and_belongs_to_many :profiles

	def self.search(query)
		where("skill like ?", "%#{query}%")
	end
end
