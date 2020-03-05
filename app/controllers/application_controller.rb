class ApplicationController < ActionController::Base
    before_action :authorized
    helper_method :current_user, :logged_in, :login_user
    
    def login_user(user)
        session[:user_id] = @user.id
    end

    def current_user
        # byebug
        @user = (User.find_by(id: session[:user_id])|| User.new)
        # byebug
    end

    def logged_in
        !!current_user.id
    end

    def authorized
        unless logged_in
            flash[:notice] = "You must be in the library to see the library"
            redirect_to login_path
        end
    end

    def pocket
        session[:pocket] ||= []
    end

    def world
        session[:world] ||= 25
    end

    def add_book_to_pocket(book_id)
            pocket[book_id] << book_id
        #also destroy the book and make a stolen book thing
    end

    def get_books_from_pocket
        @pocket_book_ids = session[:pocket]
        #and then do something with the ids
    end        

end
