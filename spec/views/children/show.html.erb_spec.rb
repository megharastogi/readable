require 'spec_helper'

describe "children/show" do
  before(:each) do
    @child = assign(:child, stub_model(Child,
      :name => "Name",
      :user_id => 1,
      :age => 2,
      :grade => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
