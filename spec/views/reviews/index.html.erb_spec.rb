require 'spec_helper'

describe "reviews/index" do
  before(:each) do
    assign(:reviews, [
      stub_model(Review,
        :child_id => 1,
        :question_id => 2,
        :ans => "Ans"
      ),
      stub_model(Review,
        :child_id => 1,
        :question_id => 2,
        :ans => "Ans"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Ans".to_s, :count => 2
  end
end
