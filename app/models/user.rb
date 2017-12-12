class User < ApplicationRecord
  has_many :review
  before_save :generate_key

  def generate_key
    self.key = BCrypt::Engine.generate_salt
  end

  def self.authenticate(submitted_key)
    binding.pry
    if User.where(key: submitted_key) != []
      true
    else
      false
    end
  end

end
