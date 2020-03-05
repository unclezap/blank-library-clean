class PocketController < ApplicationController

    def update
        add_book_to_pocket(params[:book_id])
    end

    def delete
        # byebug
        session.delete(:pocket)
        # byebug
    end

end