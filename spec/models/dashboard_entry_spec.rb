# -*- encoding : utf-8 -*-
require 'spec_helper'

describe DashboardEntry do
  it { should_validate_presence_of(:content) }

  it "should validate presence of content" do
    entry = FactoryGirl.create(:dashboard_entry)
    entry.should be_valid
  end

end
