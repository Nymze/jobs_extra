class User < ApplicationRecord

  has_many :candidacies
  has_many :jobs, through: :candidacies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
