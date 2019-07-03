require "rails_helper"

RSpec.describe Users::DraftsController, type: :routing do
  describe "routing" do
    xit "routes to #index" do
      expect(:get => "/users/drafts").to route_to("users/drafts#index")
    end

    xit "routes to #new" do
      expect(:get => "/users/drafts/new").to route_to("users/drafts#new")
    end

    xit "routes to #show" do
      expect(:get => "/users/drafts/1").to route_to("users/drafts#show", :id => "1")
    end

    xit "routes to #edxit" do
      expect(:get => "/users/drafts/1/edxit").to route_to("users/drafts#edxit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/users/drafts").to route_to("users/drafts#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/users/drafts/1").to route_to("users/drafts#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/users/drafts/1").to route_to("users/drafts#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/users/drafts/1").to route_to("users/drafts#destroy", :id => "1")
    end
  end
end
