class TalentsController < ApplicationController
	def show
		@talent = Talent.find params[:id]
	end

	def index
		@talents = Talent.all.order('created_at DESC')
	end

	def show
		@talent = Talent.find params[:id]
	end

	def search
		@talents = Talent.search(params[:search]).order("created_at DESC")
		render :index
	end

	private
	def talent_params
    params.require(:talent).permit(profile_ids: [])
  end
end