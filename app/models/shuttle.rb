class Shuttle < ApplicationRecord
    belongs_to :gallery
    belongs_to :user
end