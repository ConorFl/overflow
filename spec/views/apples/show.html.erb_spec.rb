require 'spec_helper'

describe "apples/show" do
  before(:each) do
    @apple = assign(:apple, stub_model(Apple))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
