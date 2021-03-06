class UsersController < ApplicationController
  before_action :class_finder, only: [:show, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(class_params)
    # stores all emails in lowercase to avoid duplicates and case-sensitive login errors:
    @user.email.downcase!
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
      redirect_to login_path
    else
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      flash[:color]= "invalid"
      redirect_to new_user_path
    end
  end

  def edit
    authorized_for(params[:id])
    @user = User.find(params[:id])
  end

  def update
    if @user.update(class_params)
      redirect_to @user
    else
      flash[:errors].errors.full_messages
      redirect_to edit_user_path
    end
  end

  def destroy
    @user.delete
    redirect_to users_path
  end

  private

  def class_finder
    @user = User.find(params[:id])
  end

  def class_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation, :bio, game_ids: [])
  end

end
