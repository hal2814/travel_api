require 'rails_helper'

describe "get not found errors", :type => :request do
  let!(:destinations) { FactoryBot.create_list(:destination,20)}

  before { get "/destinations/9a"}

  it 'not found error' do
    expect(response.status).to eq(404)
  end
end
