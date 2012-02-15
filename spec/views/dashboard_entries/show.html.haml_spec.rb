# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dashboard_entries/show" do
  before(:each) do
    @dashboard_entry = assign(:dashboard_entry, stub_model(DashboardEntry,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
