require 'rails_helper'

describe "post a destination route", :type => :request do

  before do
    post '/destinations', params: { :country => 'USA', :city => 'Portland', :description => 'a really nice place' }
  end

  it 'returns the country name' do
    expect(JSON.parse(response.body)['country']).to eq('USA')
  end

  it 'returns the city name' do
    expect(JSON.parse(response.body)['city']).to eq('Portland')
  end

  it 'returns the description content' do
    expect(JSON.parse(response.body)['description']).to eq('a really nice place')
  end

  it 'returns the message' do
    expect(JSON.parse(response.body)['message']).to eq('Your destination has been created successfully!')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
