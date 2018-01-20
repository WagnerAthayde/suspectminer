class Suspect < ApplicationRecord
	validates :email, :url, presence: true
end
