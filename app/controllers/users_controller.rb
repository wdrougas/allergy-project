class UsersController < ApplicationController

before_action :find_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @user = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(strong_user_params)
    redirect_to user_path(@user)
  end

  def edit
  end

  def update
    @user.update(strong_user_params)
    redirect_to users_path
  end

  def destroy
    @user.delete
    redirect_to recipes_path
  end

  def find_user
    @user = User.find(params[:id])
  end

  private

  def strong_user_params
    params.require(:user).permit(:name)
  end


end
