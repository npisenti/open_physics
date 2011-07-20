require 'spec_helper'

describe "user_sessons/edit.html.erb" do
  before(:each) do
    @user_sesson = assign(:user_sesson, stub_model(UserSesson,
      :username => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit user_sesson form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_sessons_path(@user_sesson), :method => "post" do
      assert_select "input#user_sesson_username", :name => "user_sesson[username]"
      assert_select "input#user_sesson_password", :name => "user_sesson[password]"
    end
  end
end
