class Line < ApplicationRecord
    belongs_to :page

    def self.make_with_text(page)
        
        @page = page
        @line = Line.new
        
        string = ""
        ref_string = "abcdefghijlmnoprstuvyz ,."
        80.times do
            i = rand(0..24)
            string << ref_string[i]
        end
        @line[:text] = string.split('').shuffle.join
        @page.lines << @line
        
        @line.save
        @line

    end


# outdated method, am no longer saving line text as numbers
    def make_text

        string = ""
        80.times do
            x = rand(0..24)
            string += x.to_s(25)
        end
        number = string.to_i(25)
        number

    end

# works, but only until the memory runs out or something when it suddenly decides it can't convert strings to integers
    def print_text
        integer_blob = self.number.to_i
        base_25_string = integer_blob.to_s(25)
        i = 0
        ref_string = "abcdefghijlmnoprstuvyz ,."
        string = ""
        80.times do
            x = base_25_string[i] 
          x.to_s  
            char_value = x.to_i(25)
            string += ref_string[char_value]
            i += 1
        end

        string

    end
        
end
