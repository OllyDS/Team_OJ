class Game < ApplicationRecord
  has_many :user_games
  has_many :tournaments
  has_many :users, through: :user_games
end
