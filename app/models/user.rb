class User < ApplicationRecord
  has_many :user_games
  has_many :user_tournaments
  has_many :games, through: :user_games
  has_many :tournaments, through: :user_tournaments

  has_secure_password
	validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    self.first_name + " " + self.last_name
  end

end
