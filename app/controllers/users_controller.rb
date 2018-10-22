class UsersController < ApplicationController
  before_action :class_finder, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    if @user = User.new(class_params).valid?
      @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
      redirect_to user_path(@user)
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
    if @user.update(class_params).valid?
      redirect_to user_path(@user)
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
    params.require(:user).permit(:username, :first_name, :last_name, :email, :encrypted_password, :salt, :img_url)
  end

end
