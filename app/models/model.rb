class Model < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
