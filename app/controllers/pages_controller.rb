class PagesController < ApplicationController

  def home
    @tournaments = Tournament.all
    @game = Game.find(1)
  end

end
