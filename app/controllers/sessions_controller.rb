class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def wander
        # byebug
        @user = User.find_by_id(session[:user_id])
        @name = @user.name
        # byebug
#         pocket
#         # byebug
#         different_pockets_for_different_people
#         # session[:pocket] = session[:pocket].deep_symbolize_keys
#         # pocket.deep_symbolize_keys
# # byebug
#         session[:pocket]["#{@name}logins"] += 1
# byebug
        @log = session[:pocket]["#{@name}logins"]
byebug
        if @user.galleries.count == 0
            byebug
            new_gallery = Gallery.make_with_walls(0,0)
            byebug
            @user.galleries << new_gallery
            @user.save
        end

        byebug
        # @gallery = @user.galleries[-1]
        # byebug
        # session[:pocket][:logins] += 1
        # byebug
        # redirect_to delete_pocket_path
        # @login_times = session[:pocket].length
    end

    def new
        # byebug
        if logged_in
            redirect_to @user
        end
    end

    def create
        # byebug
        
        @user = User.find_by(name: params[:name])
        
        if @user && @user.authenticate(params[:password])
            login_user(@user)
                # byebug
            redirect_to wander_path
        else
            # byebug
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