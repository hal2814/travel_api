FactoryBot.define do
  factory :user do
    name('mrdudeguy')
    key(BCrypt::Engine.generate_salt)
  end
end
