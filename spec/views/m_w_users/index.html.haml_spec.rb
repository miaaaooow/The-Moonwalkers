require 'spec_helper'

describe "m_w_users/index" do
  before(:each) do
    assign(:m_w_users, [
      stub_model(MWUser,
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
      ),
      stub_model(MWUser,
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
      )
    ])
  end

  it "renders a list of m_w_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Display Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hashed Password".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Song".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Birthday".to_s, :count => 2
  end
end
