class GalleriesController < ApplicationController
    def index
        @galleries = Gallery.all
    end
  
    def show
      @gallery = Gallery.find_by_id(params[:id])
      @my_walls = @gallery.walls
    end
  
    def move
        @gallery_old = Gallery.find_by_id(params[:gallery_id])
        if params[:move] == "forward"
            x = 1 + @gallery_old.x_axis
            z = 0 + @gallery_old.z_axis
        elsif params[:move] == "back"
            x = -1 + @gallery_old.x_axis
            z = 0 + @gallery_old.z_axis
        elsif params[:move] == "up"
            x = 0 + @gallery_old.x_axis
            z = 1 + @gallery_old.z_axis
        elsif params[:move] == "down"
            x = 0 + @gallery_old.x_axis
            z = -1 + @gallery_old.z_axis
        end

        if Gallery.exists?(x_axis: x, z_axis: z)
            @gallery = Gallery.all.find {|gallery| gallery.x_axis == x && gallery.z_axis == z}
        else
            @gallery = Gallery.make_with_walls(x,z)
        end

        @user = User.find_by_id(session[:user_id])
        @user.galleries << @gallery
        @user.save
        if params[:commit] == "I'm moving"
            redirect_to @gallery
        else
            redirect_to wall_splash_path
        end
    end

    def create
        @gallery = Gallery.make_with_walls
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
        # byebug
        params.require(:gallery).permit(:name, :move, :gallery, :gallery_id)
    end

  end
  