require 'rails_helper'

describe "post a destination route", :type => :request do
  let!(:destinations) { FactoryBot.create_list(:destination,1)}

  before do
    post `/destinations/#{Destination.last.id}`
  end


  it 'returns the country name' do
    expect(JSON.parse(response.body)['country']).to eq('USA')
  end

end
