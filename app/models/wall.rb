class Wall < ApplicationRecord
    has_many :shelves
    belongs_to :gallery

    def self.make_with_shelves(gallery)
        
        @gallery = gallery
        @wall = Wall.create

        2.times do
            Shelf.make_with_books(@wall)
        end

        @gallery.walls << @wall
        @wall.save
        @wall
    end

end