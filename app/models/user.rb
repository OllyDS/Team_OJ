class User < ApplicationRecord
  has_many :user_games
  has_many :tournaments
  has_many :games, through: :user_games



  # def full_name
  #   self.first_name + " " + self.last_name
  # end

end
