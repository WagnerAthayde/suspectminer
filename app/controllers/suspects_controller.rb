class SuspectsController < ApplicationController

	def index
		@title = 'Suspect Miner'
		@suspects = Suspect.distinct.select(:email)
	end

	def new; end

	def create
		suspect = Suspect.new(suspect_params)

		puts suspect.valid?
		p suspect.errors
		if suspect.save
			redirect_to home_path
		else
			flash[:errors] = suspect.errors.full_messages
			redirect_to new_suspects_path
		end
	end

	def by_email
		@email = params[:email]
		@suspects = Suspect.where(email: @email)
	end

	private 
	def suspect_params
		params.require(:suspect).permit(:email, :url, :guid, :access_at, :title)
	end
end
