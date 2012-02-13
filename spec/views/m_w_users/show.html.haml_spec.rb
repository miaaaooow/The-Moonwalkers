require 'spec_helper'

describe "m_w_users/show" do
  before(:each) do
    @m_w_user = assign(:m_w_user, stub_model(MWUser,
      :username => "Username",
      :name => "Name",
      :display_name => "Display Name",
      :description => "MyText",
      :email => "Email",
      :hashed_password => "Hashed Password",
      :salt => "Salt",
      :song => "Song",
      :picture => "Picture",
      :birthday => "Birthday"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Display Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hashed Password/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Salt/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Song/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Picture/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Birthday/)
  end
end
