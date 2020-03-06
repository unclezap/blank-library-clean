class BooksController < ApplicationController
    
    def splash
        @book = Book.all.find_by_id(params[:id])
        redirect_to @book
    end

    def show
        @book = Book.all.find_by_id(params[:id])
        @pages = @book.pages
        if params[:commit] == "That page"
            p = "/pages/#{params[:id]}"
            @page = @pages.find_by_id(params[p][:page_id])
            redirect_to @page
        end
    end

    def pick
        redirect_to @page
    end

end