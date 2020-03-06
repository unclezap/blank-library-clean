class Gallery < ApplicationRecord
    has_many :walls
    has_many :shuttles
    has_many :users, through: :shuttles

    def self.make_with_walls(x_axis, z_axis)

        @x_axis = x_axis
        @z_axis = z_axis

        rand_name = Gallery.make_name
        @gallery = Gallery.create(x_axis: @x_axis, z_axis: @z_axis, name: rand_name)
        2.times do
            Wall.make_with_shelves(@gallery)
        end

        @gallery.save
        @gallery

    end

    def self.make_name
        ref_string = "ABCDEFGHIJLMNOPRSTUVYZ ,."
        string = ""
        6.times do
            i = rand(0..24)
            string << ref_string[i]
        end
        rand_name = string.split('').shuffle.join
        rand_name
    end

    def show
    end

end