require 'rails_helper'

describe Destination, 'validation' do
  it { should validate_presence_of :country }
  it { should validate_presence_of :city }
  it { should validate_presence_of :description }
end

describe Destination, 'association' do
  it { should have_many :reviews }
  it { should have_many :photos }
end

describe Destination, 'column_specification' do
  it { should have_db_column(:country).of_type(:string) }
  it { should have_db_column(:city).of_type(:string) }
  it { should have_db_column(:description).of_type(:string) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
