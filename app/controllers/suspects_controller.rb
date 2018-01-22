class SuspectsController < ApplicationController

	def index
		@title = 'Suspect Miner'
		@suspects = Suspect.distinct.select(:guid).where.not(email: nil).where.not(email: "")
		p @suspects
	end

	def new; end

	def create
		suspect = Suspect.new(suspect_params)

		if suspect.save
			redirect_to home_path
		else
			flash[:errors] = suspect.errors.full_messages
			redirect_to new_suspects_path
		end
	end

	def by_guid
		@guid = params[:guid]
		@suspects = Suspect.where(guid: @guid)
	end

	private 
	def suspect_params
		params.require(:suspect).permit(:email, :url, :guid, :access_at, :title)
	end
end
