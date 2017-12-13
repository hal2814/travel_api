require 'rails_helper'

describe "creates a user", :type => :request do

  before do
    post '/users/', params: { :name => 'Joe' }
  end

  it 'returns a confirmed message' do
    binding.pry
    expect(JSON.parse(response.body)['message']).to eq("User created successfully. Your API key is ".concat((User.last['key']).to_s))
  end

  it 'returns status code 201' do
    expect(response).to have_http_status(:created)
  end

end
