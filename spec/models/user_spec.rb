require 'rails_helper'

describe User, 'validation' do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :key }
end

describe User, 'association' do
  it { should have_many :reviews }
end

describe User, 'column_specification' do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:key).of_type(:string) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end

describe User, 'authentication' do
  it 'will return true if key matches database' do
    # user = FactoryBot.create(:user)
    user = User.create!(:name => 'guy', :key => BCrypt::Engine.generate_salt)
    expect(User.authenticate(user.key)).to eq(true)
  end

  it 'will return false if key doesnt match database' do
    # user = FactoryBot.create(:user)
    user = User.create!(:name => 'guy', :key => BCrypt::Engine.generate_salt)
    expect(User.authenticate('sdadsa')).to eq(false)
  end
end
