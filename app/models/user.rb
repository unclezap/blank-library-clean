class User < ApplicationRecord
    has_secure_password

    has_many :books
    has_many :shuttles
    has_many :galleries, through: :shuttles

    def move(x_step, z_step)
        
        gallery = self.galleries[-1]
        x = gallery.x_axis
        z = gallery.z_axis
        
        old_gall_existence = Gallery.all.find {|gallery| gallery.x_axis == x + x_step && gallery.z_axis == z + z_step}

        if old_gall_existence
            self.galleries << old_gall_existence
        else
            new_gallery = Gallery.make_with_walls(x + x_step, z + z_step)
            self.galleries << new_gallery
        end

        puts self.galleries[-1].x_axis

    end

    def quote
        Quote.all.shuffle[0].text
    end

end
