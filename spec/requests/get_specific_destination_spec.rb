require 'rails_helper'

describe "get a destination route", :type => :request do
  let!(:destinations) { FactoryBot.create_list(:destination,20)}

  before do
    get '/destinations/' + (destinations.last.id).to_s
  end

  it 'returns the country name' do
    expect(destinations.last['country']).to eq('USA')
  end

end
