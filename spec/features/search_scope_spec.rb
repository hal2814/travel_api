require 'rails_helper'

describe "getting a destination route", :type => :request do

  before do
    FactoryBot.create(:destination)
    get '/destinations?country=USA'
  end

  it 'returns the country name' do
    expect(JSON.parse(response.body).first['country']).to eq('USA')
  end

end
