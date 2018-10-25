class PagesController < ApplicationController

  def home
    @tournaments = Tournament.all
  end

  def about
  end

end
