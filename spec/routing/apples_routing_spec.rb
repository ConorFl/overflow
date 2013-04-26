require "spec_helper"

describe ApplesController do
  describe "routing" do

    it "routes to #index" do
      get("/apples").should route_to("apples#index")
    end

    it "routes to #new" do
      get("/apples/new").should route_to("apples#new")
    end

    it "routes to #show" do
      get("/apples/1").should route_to("apples#show", :id => "1")
    end

    it "routes to #edit" do
      get("/apples/1/edit").should route_to("apples#edit", :id => "1")
    end

    it "routes to #create" do
      post("/apples").should route_to("apples#create")
    end

    it "routes to #update" do
      put("/apples/1").should route_to("apples#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/apples/1").should route_to("apples#destroy", :id => "1")
    end

  end
end
