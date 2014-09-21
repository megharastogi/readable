require 'spec_helper'

describe "reviews/edit" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :child_id => 1,
      :question_id => 1,
      :ans => "MyString"
    ))
  end

  it "renders the edit review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", review_path(@review), "post" do
      assert_select "input#review_child_id[name=?]", "review[child_id]"
      assert_select "input#review_question_id[name=?]", "review[question_id]"
      assert_select "input#review_ans[name=?]", "review[ans]"
    end
  end
end
