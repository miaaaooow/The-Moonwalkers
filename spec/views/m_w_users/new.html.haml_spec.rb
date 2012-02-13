require 'spec_helper'

describe "m_w_users/new" do
  before(:each) do
    assign(:m_w_user, stub_model(MWUser,
      :username => "MyString",
      :name => "MyString",
      :display_name => "MyString",
      :description => "MyText",
      :email => "MyString",
      :hashed_password => "MyString",
      :salt => "MyString",
      :song => "MyString",
      :picture => "MyString",
      :birthday => "MyString"
    ).as_new_record)
  end

  it "renders new m_w_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => m_w_users_path, :method => "post" do
      assert_select "input#m_w_user_username", :name => "m_w_user[username]"
      assert_select "input#m_w_user_name", :name => "m_w_user[name]"
      assert_select "input#m_w_user_display_name", :name => "m_w_user[display_name]"
      assert_select "textarea#m_w_user_description", :name => "m_w_user[description]"
      assert_select "input#m_w_user_email", :name => "m_w_user[email]"
      assert_select "input#m_w_user_hashed_password", :name => "m_w_user[hashed_password]"
      assert_select "input#m_w_user_salt", :name => "m_w_user[salt]"
      assert_select "input#m_w_user_song", :name => "m_w_user[song]"
      assert_select "input#m_w_user_picture", :name => "m_w_user[picture]"
      assert_select "input#m_w_user_birthday", :name => "m_w_user[birthday]"
    end
  end
end
