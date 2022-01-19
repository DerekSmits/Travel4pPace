require 'rails_helper'

RSpec.describe "Healths", type: :request do
    it "returns http success" do
        get "/api/health"
        expect(response.body).to eq('{"status":"OK"}')
        expect(response.status).to eq(200)
    end
end