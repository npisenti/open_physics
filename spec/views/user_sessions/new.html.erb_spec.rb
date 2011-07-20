require 'spec_helper'

describe "user_sessons/new.html.erb" do
  before(:each) do
    assign(:user_sesson, stub_model(UserSesson,
      :username => "MyString",
      :password => "MyString"
    ).as_new_record)
  end

  it "renders new user_sesson form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_sessons_path, :method => "post" do
      assert_select "input#user_sesson_username", :name => "user_sesson[username]"
      assert_select "input#user_sesson_password", :name => "user_sesson[password]"
    end
  end
end
