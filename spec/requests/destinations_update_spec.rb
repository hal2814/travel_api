require 'rails_helper'

describe "patch a destination change", :type => :request do
  let!(:destinations) { FactoryBot.create(:destination) }

  before do
    patch '/destinations/'.concat(destinations.id.to_s), params: { :country => 'JAPAN' }
  end

  it 'returns the cahnged country name' do
    expect(JSON.parse(response.body)['country']).to eq('JAPAN')
  end

end
