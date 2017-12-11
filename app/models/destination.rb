class Destination < ApplicationRecord
  has_many :reviews
  has_many :photos

  validates :country, :presence => true
  validates :city, :presence => true
  validates :description, :presence => true
end
