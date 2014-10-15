require 'spec_helper'

describe "employees/new" do
  before(:each) do
    assign(:employee, stub_model(Employee,
      :name => "MyString",
      :bio => "MyText",
      :started_on => "MyString",
      :date => "MyString"
    ).as_new_record)
  end

  it "renders new employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path, :method => "post" do
      assert_select "input#employee_name", :name => "employee[name]"
      assert_select "textarea#employee_bio", :name => "employee[bio]"
      assert_select "input#employee_started_on", :name => "employee[started_on]"
      assert_select "input#employee_date", :name => "employee[date]"
    end
  end
end
