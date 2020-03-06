class Book < ApplicationRecord
    has_many :pages
    belongs_to :shelf
    
    def self.make_with_pages(shelf)
        
        @shelf = shelf

        ref_string = "abcdefghijlmnoprstuvyz ,."
        string = ""
        12.times do
            i = rand(0..24)
            string << ref_string[i]
        end
        spine = string.split('').shuffle.join
        @book = Book.create(spine: spine)

        5.times do
            Page.make_with_lines(@book)
        end
        @shelf.books << @book
        @book.save
        @book
    end
    
end