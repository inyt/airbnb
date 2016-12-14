class Room < ApplicationRecord
  has_many :images, as: :imageable
end
