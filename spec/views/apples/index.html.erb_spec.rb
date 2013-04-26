require 'spec_helper'

describe "apples/index" do
  before(:each) do
    assign(:apples, [
      stub_model(Apple),
      stub_model(Apple)
    ])
  end

  it "renders a list of apples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
