class Page < ApplicationRecord
    has_many :lines
    belongs_to :book

    def self.make_with_lines(book)
       
        @book = book
        @page = Page.create

        40.times do
            Line.make_with_text(@page)
        end

        @book.pages << @page
        @page.save
        @page
    end

    def make_readable_text
        
        j = 0
        
        40.times do
            line = self.lines[j]
            x = line.return_nums
            
            i = 0
            string = ""
            ref_string = "abcdefghijlmnoprstuvyz ,."

            80.times do
                string += ref_string[x[i]]
                i += 1
            end

            string
            
            j += 1
        end

    end

end
