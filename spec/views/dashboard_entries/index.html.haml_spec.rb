# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dashboard_entries/index" do
  before(:each) do
    assign(:dashboard_entries, [
      stub_model(DashboardEntry,
        :content => "Content"
      ),
      stub_model(DashboardEntry,
        :content => "Content"
      )
    ])
  end

  it "renders a list of dashboard_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
