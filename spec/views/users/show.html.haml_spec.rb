# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User))
  end

  it "renders attributes in <p>" do
    render
  end
end
