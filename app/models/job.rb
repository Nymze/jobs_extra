class Job < ApplicationRecord
  belongs_to :userpro
  belongs_to :category
  has_many :candidacies 
  has_many :users, through: :candidacies

  def has_candidate?(user)
      users.jobs.include?(user)
  end
end
