class ApplicationController < ActionController::Base
  # Make the current_user method available to views also, not just controllers:
  helper_method :current_user, :tournament_dates, :tournament_array, :logged_in?, :date_check
  # Define the current_user method:
  def current_user
    # Look up the current user based on user_id in the session cookie:
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def logged_in?
    !!current_user
  end

  def authorized?
    if !logged_in?
      flash[:authorized] = "You must be logged in to access this page!"
      redirect_to login_path and return
    end
  end

  def authorized_for(user_id)
    if current_user.id != user_id.to_i
      flash[:authorized] = "You cannot view a page that's not yours."
      redirect_to current_user
    end
  end


  # ====== move us soon =====

  def tournament_dates
    @tournaments = Tournament.all.map {|t| t.date }.uniq
  end

  def date_check
    t = Time.now
    if tournament_dates == t.strftime("%A %dst %B")
       "n"
    elsif tournament_dates == t.strftime("%A %dnd %B")
       "n"
    elsif tournament_dates == t.strftime("%A %drd %B")
       "n"
    elsif tournament_dates == t.strftime("%A %dth %B")
       "Today"
    end
  end


  def tournament_array
    @tournaments = Tournament.all
  end

end
