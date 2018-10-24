class ApplicationController < ActionController::Base

  # Make the current_user method available to views also, not just controllers:
  helper_method :current_user, :tournament_dates

  # Define the current_user method:
  def current_user
    # Look up the current user based on user_id in the session cookie:
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def tournament_dates
    @tournaments = Tournament.all.map {|t| t.date }.uniq
  end

end
