class TournamentsController < ApplicationController
  before_action :class_finder, only: [:show, :edit, :update, :destroy]

  def index
    @tournaments = Tournament.all
    @user_tournaments = UserTournament.all
  end

  def show
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(class_params)
  end

  def edit
  end

  def update
    if @tournament.update(class_params).valid?
      redirect_to tournament_path(@tournament)
    else
      flash[:errors].errors.full_messages
      redirect_to edit_tournament_path
    end
  end

  def destroy
    @tournament.delete
    redirect_to tournaments_path
  end

  private

  def class_finder
    @tournament = Tournament.find(params[:id])
  end

  def class_params
    params.require(:tournament).permit(:name, :date, :game_id)
  end

end
