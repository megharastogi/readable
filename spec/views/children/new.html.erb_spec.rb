require 'spec_helper'

describe "children/new" do
  before(:each) do
    assign(:child, stub_model(Child,
      :name => "MyString",
      :user_id => 1,
      :age => 1,
      :grade => 1
    ).as_new_record)
  end

  it "renders new child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", children_path, "post" do
      assert_select "input#child_name[name=?]", "child[name]"
      assert_select "input#child_user_id[name=?]", "child[user_id]"
      assert_select "input#child_age[name=?]", "child[age]"
      assert_select "input#child_grade[name=?]", "child[grade]"
    end
  end
end
