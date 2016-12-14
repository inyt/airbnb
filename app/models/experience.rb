class Experience < ApplicationRecord
  has_many :images, as: :imageable
end
