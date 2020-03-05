# ref_string = "abcdefghijlmnoprstuvyz ,."
# string = ""

# 12.times do
#     i = rand(0..24)
#     string << ref_string[i]
# end
#     spine = string.split('').shuffle.join
# source_book = Book.create(spine: spine)

# run_time = Time.now
# starting_gallery = Gallery.make_with_walls
# run_time_total = Time.now - run_time

# User.create(name:run_time_total.to_s)

Quote.create(text: "I have always imagined that Paradise will be a kind of library - Borges")
Quote.create(text: "I cannot sleep unless I am surrounded by books - Borges")
Quote.create(text: "Let others pride themselves about how many pages they have written; I'd rather boast about the ones I've read - Borges")
Quote.create(text: "You have wakened not out of sleep but into a prior dream, and that dream lies within another, and so on, to infinity, which is the number of grains of sand. The path that you take is endless, and you will die before you have truly awakened - Borges")
Quote.create(text: "I have always imagined that Paradise is a type of library - Borges")
Quote.create(text: "A book is more than a verbal structure or series of verbal structures; it is the dialogue it establishes with its reader and the intonation it imposes upon his voice and the changing and durable images it leaves in his memory. A book is not an isolated being: it is a relationship, an axis of innumerable relationships - Borges")
Quote.create(text: "Personally, I am a hedonistic reader; I have never read a book merely because it was ancient. I read books for the aesthetic emotions they offer me, and I ignore the commentaries and critcism - Borges")
Quote.create(text: "Life itself is a quotation - Borges")
Quote.create(text: "The original is unfaithful to the translation - Borges")
Quote.create(text: "If the pages of this book contain some successful verse, the reader must excuse me the discourtesy of having usurped it first. Our nothingness differs little; it is a trivial and chance circumstance that you should be the reader of these exercises and I their author - Borges")
Quote.create(text: "It is worth remembering that every writer begins with a naively physical notion of what art is. A book for him or her is not an expression or a series of expressions, but literally a volume, a prism with six rectangular sides made of thin sheets of papers which should include a cover, an inside cover, an epigraph in italics, a preface, nine or ten parts with some verses at the beginning, a table of contents, an ex libris with an hourglass and a Latin phrase, a brief list of errata, some blank pages, a colophon and a publication notice: objects that are known to constitute the art of writing. - Borges")
Quote.create(text: "There is no combination of characters one can make — dhcmrlchtdj, for example — that the divine Library has not foreseen and that in one or more of its secret tongues does not hide a terrible significance. There is no syllable one can speak that is not filled with tenderness and terror, that is not, in one of those languages, the mighty name of a god. - Borges")
Quote.create(text: "I know of one semibarbarous zone whose librarians repudiate the \"vain and superstitious habit\" of trying to find sense in books, equating such a quest with attempting to find meaning in dreams or in the chaotic lines on the palms of one's hand. - Borges")
Quote.create(text: "There's no need to build a labyrinth when the entire universe is one - Borges")

test_user = User.create(name: "Zeb", password: "zeb")
test_gallery = Gallery.make_with_walls(0,0)
test_shuttle = Shuttle.new
test_user.galleries << test_gallery

Gallery.make_with_walls(1,0)

