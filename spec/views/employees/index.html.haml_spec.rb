require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :name => "Name",
        :bio => "MyText",
        :started_on => "Started At",
        :date => "Date"
      ),
      stub_model(Employee,
        :name => "Name",
        :bio => "MyText",
        :started_on => "Started At",
        :date => "Date"
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Started At".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
  end
end
