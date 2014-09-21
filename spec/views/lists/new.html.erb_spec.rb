require 'spec_helper'

describe "lists/new" do
  before(:each) do
    assign(:list, stub_model(List,
      :book_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lists_path, "post" do
      assert_select "input#list_book_id[name=?]", "list[book_id]"
      assert_select "input#list_user_id[name=?]", "list[user_id]"
    end
  end
end
