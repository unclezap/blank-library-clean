class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def wander
        @user = User.find_by_id(session[:user_id])
        @name = @user.name
        @log = session[:pocket]["#{@name}logins"]
        if @user.galleries.count == 0 
            if Gallery.all.count < 1 
                new_gallery = Gallery.make_with_walls(0,0)
            end
            
            @user.galleries << Gallery.all.first
            @user.save
        end

        @gallery = @user.galleries.last
    end

    def new
        if logged_in
            redirect_to @user
        end
    end

    def create
        
        @user = User.find_by(name: params[:name])
        
        if @user && @user.authenticate(params[:password])
            login_user(@user)
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