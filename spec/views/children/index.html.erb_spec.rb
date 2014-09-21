require 'spec_helper'

describe "children/index" do
  before(:each) do
    assign(:children, [
      stub_model(Child,
        :name => "Name",
        :user_id => 1,
        :age => 2,
        :grade => 3
      ),
      stub_model(Child,
        :name => "Name",
        :user_id => 1,
        :age => 2,
        :grade => 3
      )
    ])
  end

  it "renders a list of children" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
