class User < ApplicationRecord
    # has_many :pages
    # has_many :lines, through: :pages
    has_many :books
    has_many :shuttles
    has_many :galleries, through: :shuttles
    has_many :walls, through: :shuttles
    has_many :shelves, through: :shuttles
    # has_many :galleries, through: :jaunts

end
