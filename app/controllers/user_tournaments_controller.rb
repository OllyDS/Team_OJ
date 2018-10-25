class UserTournamentsController < ApplicationController

  def new
    @user_tournament = UserTournament.new
  end

  def create
    @user_tournament = UserTournament.create(class_params)
    redirect_to tournaments_path
  end

  def destroy
    @user_tournament.delete
    redirect_to tournaments_path
  end

  private

  def class_params
    params.require(:user_tournament).permit(:user_id, :tournament_id)
  end

end
