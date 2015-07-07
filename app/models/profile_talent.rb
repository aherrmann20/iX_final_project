class ProfileTalent < ActiveRecord::Base
	belongs_to :profile
	belongs_to :talent
end
