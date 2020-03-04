class Gallery < ApplicationRecord
    has_many :walls
    has_many :shuttles
    has_many :users, through: :shuttles

    def self.make_with_walls(x_axis, y_axis)

        @x_axis = x_axis
        @y_axis = y_axis
    
        @gallery = Gallery.create(x_axis: @x_axis, z_axis: @y_axis)

        4.times do
            Wall.make_with_shelves(@gallery)
        end

        @gallery.save
        @gallery

    end

end