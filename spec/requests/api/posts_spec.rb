require 'rails_helper'

RSpec.describe "Posts", type: :request do
  let!(:post) {create(:post)}
  describe "GET /api/posts" do
    it "return success code" do
      get '/api/posts'
      expect(response).to have_http_status(:ok)
    end
    it "contain post" do
        get "/api/posts/1"
        expect(response).to have_http_status(:ok)
    end
    it "contain information in JSON" do
      get "/api/posts"
      posts = Post.all
      expect(JSON.parse(response.body)).to eq(JSON.parse(posts.to_json))
    end
  end
end