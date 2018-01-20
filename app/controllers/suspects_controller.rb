class SuspectsController < ApplicationController

	def index
		@suspects = Suspect.select("min(id) as id, text(email) as email").group("text(email)").limit(nil).to_a
		@total = Suspect.group(:email).count
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
		@email = Suspect.find(params[:id]).email
		@accesses = Suspect.where(email: Suspect.find(params[:id]).email)
	end

private 
	def suspect_params
		params.require(:suspect).permit(:email, :url)
	end
end
