# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dashboard_entries/edit" do
  before(:each) do
    @dashboard_entry = assign(:dashboard_entry, stub_model(DashboardEntry,
      :content => "MyString"
    ))
  end

  it "renders the edit dashboard_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dashboard_entries_path(@dashboard_entry), :method => "post" do
      assert_select "input#dashboard_entry_content", :name => "dashboard_entry[content]"
    end
  end
end
