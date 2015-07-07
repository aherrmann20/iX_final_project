class TalentsController < ApplicationController
	def show
		@talent = Talent.find params[:id]
	end

	def index
		@talents = Talent.all
	end
end