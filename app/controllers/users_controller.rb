class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id]) unless logged_in
  end

  def new
    @user = current_user
  end

  def create
    @user = User.create(whodat)
    login_user(@user)
    redirect_to wander_path
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
    params.require(:user).permit(:name,:password)
  end

end
