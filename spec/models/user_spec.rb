# -*- encoding : utf-8 -*-
require 'spec_helper'

describe User do
  
  it "should be valid" do
    user = FactoryGirl.create(:user)
    user.should be_valid
  end

  it "should have valid email" do
    bad_emails = [ ".something.com", "hi@bye", "sadfsdfhksfjd"]
    ok_emails = [ "burgas@bg.gov", "maria.mateva@neverland.com"] 

    bad_emails.each do |email| 
      user = FactoryGirl.create(:user, :email => email)
      user.should_not be_valid
    end
    ok_emails.each do |email| 
      user = FactoryGirl.create(:user, :email => email)
      user.should be_valid
    end
  end

  it "should have correct role" do
    admin = FactoryGirl.create(:admin)
    moonwalker = FactoryGirl.create(:mw)
    normal_user = FactoryGirl.create(:user)
    
    admin.role.should eql(User::ADMIN)
    moonwalker.role.should eql(User::MOONWALKER)
    user.role.should eql(User::USER)
  end

  it "should have correct display_name" do
    name_less = FactoryGirl.create(:admin)
    named = FactoryGirl.create(:user)

    name_less.display_name.should_eq name_less.username
    named.display_name.should_eq name_less.name
  end
  
  it "should be able to authenticate with correct username and password" do
    user = FactoryGirl.create(:user, :username => 'adrian', :password => 'cheese')
    User.authenticate(:username, :password).should == user
  end
  
  it "should NOT be able to authenticate with incorrect username and password" do
    user = FactoryGirl.create(:user, :username => "adrian", :password => "cheese")
    User.authenticate(:username, "fortune").should_not == user
  end
end
