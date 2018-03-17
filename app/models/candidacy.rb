class Candidacy < ApplicationRecord
	belongs_to :user
	belongs_to :job

	validates :job, uniqueness: {scope: :user}
end
