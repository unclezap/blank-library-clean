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

# test_user = User.create(name: "Zeb", password: "zeb")
# test_gallery = Gallery.make_with_walls(0,0)
# test_shuttle = Shuttle.new
# test_user.galleries << test_gallery

Gallery.make_with_walls(1,0)