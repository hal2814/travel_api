class User < ApplicationRecord
  has_many :reviews
  before_save :generate_key

  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :key, :presence => true

  def generate_key
    self.key = BCrypt::Engine.generate_salt
  end

  def self.authenticate(submitted_key)
    if User.where(key: submitted_key) != []
      true
    else
      false
    end
  end

end
