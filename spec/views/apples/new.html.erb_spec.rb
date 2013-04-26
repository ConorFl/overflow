require 'spec_helper'

describe "apples/new" do
  before(:each) do
    assign(:apple, stub_model(Apple).as_new_record)
  end

  it "renders new apple form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apples_path, "post" do
    end
  end
end
