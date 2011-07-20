require 'spec_helper'

describe "user_sessons/show.html.erb" do
  before(:each) do
    @user_sesson = assign(:user_sesson, stub_model(UserSesson,
      :username => "Username",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password/)
  end
end
