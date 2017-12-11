class Destination < ApplicationRecord
  has_many :reviews
  has_many :photos
end
