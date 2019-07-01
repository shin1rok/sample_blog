require "rails_helper"

RSpec.describe Users::PostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/users/posts").to route_to("users/posts#index")
    end

    it "routes to #new" do
      expect(:get => "/users/posts/new").to route_to("users/posts#new")
    end

    it "routes to #show" do
      expect(:get => "/users/posts/1").to route_to("users/posts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/users/posts/1/edit").to route_to("users/posts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/users/posts").to route_to("users/posts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/users/posts/1").to route_to("users/posts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/users/posts/1").to route_to("users/posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/users/posts/1").to route_to("users/posts#destroy", :id => "1")
    end
  end
end
