class ApplicationController < ActionController::Base
    before_action :authorized
    helper_method :current_user, :logged_in, :login_user, :pocket, :different_pockets_for_different_people
    
    def login_user(user)
        session[:user_id] = @user.id
        pocket
        different_pockets_for_different_people
        session[:pocket]["#{@name}logins"] += 1
    end

    def current_user
        @user = (User.find_by(id: session[:user_id])|| User.new)
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
        session[:pocket]||= {}
    end

    def different_pockets_for_different_people
        @name = current_user.name
        session[:pocket]["#{@name}logins"] ||= 0
    end

    # def add_book_to_pocket(book_id)
    #         pocket[:books] << book_id
    # end

    # def get_books_from_pocket
    #     @pocket_book_ids = session[:pocket]
    #     #and then do something with the ids
    # end
    
    #     def world
    #     session[:world] ||= 25
    # end

end
