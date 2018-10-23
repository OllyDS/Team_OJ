class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_games
  has_many :tournaments
  has_many :games, through: :user_games



  def full_name
    self.first_name + " " + self.last_name
  end

end
