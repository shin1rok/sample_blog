require 'rails_helper'

RSpec.describe "Users::Posts", type: :request do
  describe "GET /users/posts" do
    it "works! (now write some real specs)" do
      get users_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
