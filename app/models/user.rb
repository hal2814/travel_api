class User < ApplicationRecord
  has_many :review
  before_save :generate_key

  def generate_key
    self.key = BCrypt::Engine.generate_salt
  end

  def self.authenticate(submitted_key)
    match = BCrypt::Password.create(submitted_key)
    user_key = BCrypt::Password.new(match)
    if user_key == submitted_key
      return true
    else
      return false
    end
  end

end
