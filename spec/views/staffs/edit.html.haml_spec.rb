require 'spec_helper'

describe "staffs/edit" do
  before(:each) do
    @staff = assign(:staff, stub_model(Staff,
      :name => "MyString",
      :bio => "MyText",
      :started_on => "MyString",
      :date => "MyString"
    ))
  end

  it "renders the edit staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => staffs_path(@staff), :method => "post" do
      assert_select "input#staff_name", :name => "staff[name]"
      assert_select "textarea#staff_bio", :name => "staff[bio]"
      assert_select "input#staff_started_on", :name => "staff[started_on]"
      assert_select "input#staff_date", :name => "staff[date]"
    end
  end
end
