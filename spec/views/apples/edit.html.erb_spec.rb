require 'spec_helper'

describe "apples/edit" do
  before(:each) do
    @apple = assign(:apple, stub_model(Apple))
  end

  it "renders the edit apple form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apple_path(@apple), "post" do
    end
  end
end
