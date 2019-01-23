class GamesController < ApplicationController
  before_action :class_finder, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.all
  end

  def show
    @users = User.all
      # @foo = Game
      #   .find(params[:id])
      #   .includes(user_games: :users).all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(class_params)
    if @game.valid?
      @game.save
      redirect_to games_path
    else
      flash[:errors].errors.full_messages
      redirect_to new_game_path
    end
  end

  def edit
  end

  def update
    if @game.update(class_params).valid?
      redirect_to game_path(@game)
    else
      flash[:errors].errors.full_messages
      redirect_to edit_game_path
    end
  end

  def destroy
    @game.delete
    redirect_to games_path
  end

  private

  def class_finder
    @game = Game.find(params[:id])
  end

  def class_params
    params.require(:game).permit(:name, :bio)
  end

end
