class WallsController < ApplicationController
    
    def splash
        @wall = Wall.all.find_by_id(params[:id])
        redirect_to @wall    
    end

    def show
        @wall = Wall.all.find_by_id(params[:id])
        @shelves = @wall.shelves
        if params[:commit] == "That shelf"
            p = "/shelves/#{params[:id]}"
            @shelf = @shelves.find_by_id(params[p][:shelf_id])
            redirect_to @shelf
        end
    end

    def pick
        @wall = Wall.all.find_by_id(params[:id])
        @shelves = @wall.shelves
        byebug
        @shelf = @shelves.all.find_by_id(p)
        redirect_to @shelf
    end

#     private
# # "/shelves/11"
# # (byebug) params[p]
# # <ActionController::Parameters {"shelf_id"=>"51"} permitted: false>
# # (byebug) params[p][:shelf_id]
#     def whichshelf
#         byebug
#         # p = "/shelves/#{params[:id]}"
#         # p = params[p]
#         params.require(:shelf).permit(:commit, :id, :p)
#         byebug
#     end
end