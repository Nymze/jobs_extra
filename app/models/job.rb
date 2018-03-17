class Job < ApplicationRecord
	belongs_to :category
	has_many :candidacies 
	has_many :users, through: :candidacies
end
