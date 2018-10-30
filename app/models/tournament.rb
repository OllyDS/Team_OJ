class Tournament < ApplicationRecord
  belongs_to :game
  has_many :user_tournaments
  has_many :users, through: :user_tournaments

  delegate :name, to: :game, prefix: true

  # def t_name_and_date
  #   self.name + " " + self.date
  # end


  # def t_signed_up?
  #   @tournament = Tournament.find(params[:id])
  #   current_user.tournaments.each do
  # end


end
