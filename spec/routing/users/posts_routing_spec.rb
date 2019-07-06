require "rails_helper"

RSpec.describe Users::PostsController, type: :routing do
  describe "routing" do
    xit "routes to #index" do
      expect(:get => "/users/posts").to route_to("users/posts#index")
    end

    xit "routes to #new" do
      expect(:get => "/users/posts/new").to route_to("users/posts#new")
    end

    xit "routes to #show" do
      expect(:get => "/users/posts/1").to route_to("users/posts#show", :id => "1")
    end

    xit "routes to #edxit" do
      expect(:get => "/users/posts/1/edxit").to route_to("users/posts#edxit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/users/posts").to route_to("users/posts#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/users/posts/1").to route_to("users/posts#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/users/posts/1").to route_to("users/posts#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/users/posts/1").to route_to("users/posts#destroy", :id => "1")
    end
  end
end
