class Shelf < ApplicationRecord
    has_many :books
    belongs_to :wall

    def self.make_with_books(wall)
    
        @wall = wall
        @shelf = Shelf.create

        1.times do
            Book.make_with_pages(@shelf)
        end

        @wall.shelves << @shelf
        @shelf.save
        @shelf   
    end

    def self.make_without_books(wall)

        @wall = wall
        @shelf = Shelf.create
        @wall.shelves << @shelf
        @shelf.save
        @shelf
    
    end
end