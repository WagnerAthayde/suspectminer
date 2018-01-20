class SuspectsController < ApplicationController

	def index
		@suspects = Suspect.all
	end

	def new
	end

	def create
		suspect = Suspect.new(suspect_params)

		if suspect.save
			redirect_to "/"
		else
			flash[:errors] = suspect.errors.full_messages
			redirect_to "/suspects/new"
		end
	end

	def show
		@suspect = Suspect.find(params[:id])
	end

private 
	def suspect_params
		params.require(:suspect).permit(:email, :url)
	end
end
