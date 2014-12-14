require 'rails_helper'

RSpec.describe AnagramController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET search' do
    it 'should return http success' do
      get :search, :wordlist => 'stop'
      expect(response).to have_http_status(:success)
    end
    it 'should return valid json' do
      get :search, :wordlist => 'stop'
      expect(response.content_type).to eq("application/json")
    end
    it 'should return multiple json objects' do
      expected = JSON.parse('{"stop":["opts","post","pots","spot","tops"],"start":["tarts"]}')
      get :search, :wordlist => 'stop,start'
      expect(response.content_type).to eq("application/json")
      expect(JSON.parse(response.body)).to eql(expected)
    end
    it 'should return an empty json object if no matches found' do
      expected = JSON.parse('{"wibble":[]}')
      get :search, :wordlist => 'wibble'
      expect(response.content_type).to eq("application/json")
      expect(JSON.parse(response.body)).to eql(expected)
    end
  end
end
