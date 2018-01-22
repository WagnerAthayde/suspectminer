class Suspect < ApplicationRecord
	validates :url, presence: true
end
