require 'spec_helper'

describe "user_sessons/index.html.erb" do
  before(:each) do
    assign(:user_sessons, [
      stub_model(UserSesson,
        :username => "Username",
        :password => "Password"
      ),
      stub_model(UserSesson,
        :username => "Username",
        :password => "Password"
      )
    ])
  end

  it "renders a list of user_sessons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
