class ShelvesController < ApplicationController
    
    def splash
        @shelf = Shelf.all.find_by_id(params[:id])
        redirect_to @shelf
    end

    def show
        @shelf = Shelf.all.find_by_id(params[:id])
        @books = @shelf.books
        if params[:commit] == "That book"
            p = "/books/#{params[:id]}"
            @book = @books.find_by_id(params[p][:book_id])
            redirect_to @book
        end
    end

    def pick
        redirect_to @book
    end

end