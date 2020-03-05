class PocketController < ApplicationController

    def update
        add_book_to_pocket(params[:book_id])
    end

    def delete
        session.delete(:pocket)
    end

end