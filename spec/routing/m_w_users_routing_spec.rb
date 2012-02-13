require "spec_helper"

describe MWUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/m_w_users").should route_to("m_w_users#index")
    end

    it "routes to #new" do
      get("/m_w_users/new").should route_to("m_w_users#new")
    end

    it "routes to #show" do
      get("/m_w_users/1").should route_to("m_w_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/m_w_users/1/edit").should route_to("m_w_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/m_w_users").should route_to("m_w_users#create")
    end

    it "routes to #update" do
      put("/m_w_users/1").should route_to("m_w_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/m_w_users/1").should route_to("m_w_users#destroy", :id => "1")
    end

  end
end
