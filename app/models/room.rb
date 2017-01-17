class Room < ApplicationRecord
  belongs_to :user
  has_many :images, as: :imageable
  has_many :reservations
  accepts_nested_attributes_for :images

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
