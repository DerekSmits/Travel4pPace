require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /api/posts" do
    it "return success code" do
      get '/api/posts'
      expect(response).to have_http_status(:ok)
    end
    # it "contain information in JSON" do
        # get "/api/posts"
# 
  # end
#   end
end