class ApplicationController < ActionController::Base
    before_action :authorized
    helper_method :current_user, :logged_in, :login_user, :pocket, :different_pockets_for_different_people
    
    def login_user(user)
        session[:user_id] = @user.id
        pocket
        # byebug
        different_pockets_for_different_people
        # session[:pocket] = session[:pocket].deep_symbolize_keys
        # pocket.deep_symbolize_keys
# byebug
        session[:pocket]["#{@name}logins"] += 1
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
        # @name = current_user.name
        # byebug
        session[:pocket]||= {}
        # byebug
    end

    def different_pockets_for_different_people
        @name = current_user.name
        session[:pocket]["#{@name}logins"] ||= 0
        # byebug
        # pocket.deep_symbolize_keys
        # byebug
    end

    def add_book_to_pocket(book_id)
            pocket[:books] << book_id
        #also destroy the book and make a stolen book thing
    end

    def get_books_from_pocket
        @pocket_book_ids = session[:pocket]
        #and then do something with the ids
    end
    
        def world
        session[:world] ||= 25
    end

end
