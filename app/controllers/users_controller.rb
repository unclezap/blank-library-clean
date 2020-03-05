class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show]
  
  def index
    @users = User.all
  end

  def show
    # byebug
    # @user = User.find_by_id(params[:id])
    # byebug
    # if @user.authenticate(params[:password])
    #   byebug
    #   login_user(@user)
    # end

    @user = User.find_by_id(params[:id]) unless logged_in


    # byebug
    # unless session[:user_id] != nil
    #   @user = User.find_by_id(params[:id])
    # end
  end

  def new
    # byebug
    @user = current_user
  end

  def create
    # byebug
    @user = User.create(whodat)
    login_user(@user)
    redirect_to wander_path
  end

  def edit
  end

  def update
  end

  def destroy
    @user = User.find(session[:user_id])
    session.delete(:user_id)
    @user.delete
    redirect_to new_user_path
  end

  private

  def whodat
    # byebug
    params.require(:user).permit(:name,:password)
  end

end
