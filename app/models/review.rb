class Review < ApplicationRecord
  belongs_to :destination

  validates :rating, :presence => true
  validates :content, :presence => true
  validates :user_id, :presence => true
  validates :destination_id, :presence => true
end
