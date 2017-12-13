require 'rails_helper'

describe "get not found errors", :type => :request do
  let!(:destinations) { FactoryBot.create_list(:destination,1)}

  before { post '/destinations' }

  it 'not found error' do
    expect(response.status).to eq(406)
  end
end
