require 'spec_helper'

describe Problem do

  before(:each) do
    @problem = Problem.create!(:name => "test", :statement => "test statement")
    @solution = @problem.solutions.build(:content => "solution 1 test")
  end

  it "should have a solutions method" do
    @problem.should respond_to(:solutions)
  end

  it "should be associated with the right solution" do
    @problem.solutions.should == [@solution]
  end

end
