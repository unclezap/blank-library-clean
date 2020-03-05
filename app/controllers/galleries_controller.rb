class GalleriesController < ApplicationController
    def index
        @galleries = Gallery.all
    end
  
    def show
      @gallery = Gallery.find_by_id(params[:id])
    end
  
    def edit
        @gallery = Gallery.find_by_id(params[:id])
        @name1 = Gallery.make_name
        @name2 = Gallery.make_name
        @name3 = Gallery.make_name
    end
  

    def update
        @gallery = Gallery.find_by_id(params[:id])
        if @gallery.update(whereami)
            redirect_to gallery_path(@gallery)
        else
            render :show
        end
    end

    private

    def whereami
        params.require(:gallery).permit(:name)
    end

  end
  