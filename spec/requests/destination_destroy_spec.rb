require 'rails_helper'

describe "destroy a destination", :type => :request do
  let!(:destinations) { FactoryBot.create(:destination) }

  before do
    delete '/destinations/'.concat(destinations.id.to_s)
  end

  it 'returns a confirmed message' do
    expect(JSON.parse(response.body)['message']).to eq("Your destination has been deleted successfully!")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
