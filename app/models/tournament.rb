class Tournament < ApplicationRecord
  belongs_to :game
  has_many :user_tournaments
  has_many :users, through: :user_tournaments
end
