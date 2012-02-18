# -*- encoding : utf-8 -*-
require 'spec_helper'

describe User do

  before(:each) do
    #@user = User.new
  end

  it "should be valid" do
    user = FactoryGirl.create(:user)
    user.should be_valid
  end

  it "should have correct email" do

  end

  it "should have correct role" do
    
  end

  it "should have correct display name" do
    
  end
  
  it "should be able to authenticate with correct username and password" do
    user = FactoryGirl.create(:user, :username => 'adrian', :password => 'cheese')
    User.authenticate('adrian', 'cheese').should == user
  end
  
  it "should NOT be able to authenticate with incorrect username and password" do
  end
end
