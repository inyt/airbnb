class Room < ApplicationRecord
  has_many :images, as: :imageable
  has_many :reservations
  accepts_nested_attributes_for :images
end
