# -*- encoding : utf-8 -*-
require "spec_helper"

describe DashboardEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/dashboard_entries").should route_to("dashboard_entries#index")
    end

    it "routes to #new" do
      get("/dashboard_entries/new").should route_to("dashboard_entries#new")
    end

    it "routes to #show" do
      get("/dashboard_entries/1").should route_to("dashboard_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dashboard_entries/1/edit").should route_to("dashboard_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dashboard_entries").should route_to("dashboard_entries#create")
    end

    it "routes to #update" do
      put("/dashboard_entries/1").should route_to("dashboard_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dashboard_entries/1").should route_to("dashboard_entries#destroy", :id => "1")
    end

  end
end
