require "rails_helper"

RSpec.describe UserinterestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/userinterests").to route_to("userinterests#index")
    end


    it "routes to #show" do
      expect(:get => "/userinterests/1").to route_to("userinterests#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/userinterests").to route_to("userinterests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/userinterests/1").to route_to("userinterests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/userinterests/1").to route_to("userinterests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/userinterests/1").to route_to("userinterests#destroy", :id => "1")
    end

  end
end
