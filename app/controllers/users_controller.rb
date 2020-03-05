class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show]
  
  def index
    @users = User.all
  end

  def show
    # byebug
    # @user = User.find_by_id(params[:id])
    # byebug
    @user = User.find_by_id(params[:id]) unless logged_in
    # byebug
    # unless session[:user_id] != nil
    #   @user = User.find_by_id(params[:id])
    # end
  end

  def new
    @user = current_user
  end

  def create
    @user = User.create(whodat)

    redirect_to @user
  end

  def edit
  end

  def update
  end

  def destroy
    byebug
    @user = User.find(session[:user_id])
    byebug
    session.delete(:user_id)
    byebug
    @user.delete
    byebug
    redirect_to new_user_path
  end

  private

  def whodat
    params.require(:user).permit(:name,:password)
  end

end
