class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def wander
    end

    def create
        # byebug
        @user = User.find_by(name: params[:name])

        if @user && @user.authenticate(params[:password])
            login_user(@user)
            # byebug
            redirect_to wander_path
        else
            flash[:notice] = "That wasn't the passphrase..."
            redirect_to new_user_path
        end
    end

    def destroy
        session.delete(:user_id)
        flash[:notice] = "Goodbye"
        redirect_to login_path
    end

end