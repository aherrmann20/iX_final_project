class TalentsController < ApplicationController
	def show
		@talent = Talent.find params[:id]
	end

	def index
		@talents = Talent.all
		if params[:search]
			@talents = Talent.search(params[:search]).order("created_at DESC")
		else
			@talents = Talent.all.order('created_at DESC')
		end
	end
end