require 'rails_helper'

RSpec.describe "Posts", type: :request do
  let!(:post) {create(:post)}
<<<<<<< HEAD
  let!(:post2) {create(:post)}
=======
>>>>>>> 9f47b4e67f5e3b0d9f5829704a94b16850a0da79
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
<<<<<<< HEAD
      get "/api/posts"
      posts = Post.all
      expect(JSON.parse(response.body)).to eq(JSON.parse(posts.to_json))
=======
      get "/api/posts/1"
      byebug
      expect(JSON.parse(response.body)["posts"]).to eq(JSON.parse(post.to_json))
>>>>>>> 9f47b4e67f5e3b0d9f5829704a94b16850a0da79
    end
  end
  # describe "POST /api/posts" do
    # let!(:params) do
      # {
        # id: 1, title: "test", describtion: "desc", author_id: 1, shorts: "Short"
      # }
    # end
    # it "create new post" do
      # post "/api/posts", params: params.to_json, headers: headers
      # byebug
    # end
  # end
end