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
