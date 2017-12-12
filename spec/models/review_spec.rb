require 'rails_helper'

describe Review, 'validation' do
  it { should validate_presence_of :rating }
  it { should validate_presence_of :content }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :destination_id }
end

describe Review, 'association' do
  it { should belong_to :user }
end

describe Review, 'column_specification' do
  it { should have_db_column(:rating).of_type(:integer) }
  it { should have_db_column(:content).of_type(:string) }
  it { should have_db_column(:user_id).of_type(:integer) }
  it { should have_db_column(:destination_id).of_type(:integer) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
