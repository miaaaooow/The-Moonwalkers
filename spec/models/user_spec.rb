require 'spec_helper'

describe User do

  before(:each) do
    @user = User.new
  end

  it "should be valid" do
    @user.should be_valid
  end

  it "should have correct email" do

  end

  it "should have correct role" do
    
  end
end
