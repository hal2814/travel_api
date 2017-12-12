class Photo < ApplicationRecord
  belongs_to :destination

  validates :description, :presence => true
  validates :image_url, :presence => true
  validates :user_id, :presence => true
  validates :destination_id, :presence => true
end
