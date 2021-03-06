require 'spec_helper'

describe "staffs/index" do
  before(:each) do
    assign(:staffs, [
      stub_model(Staff,
        :name => "Name",
        :bio => "MyText",
        :started_on => "Started At",
        :date => "Date"
      ),
      stub_model(Staff,
        :name => "Name",
        :bio => "MyText",
        :started_on => "Started At",
        :date => "Date"
      )
    ])
  end

  it "renders a list of staffs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Started At".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
  end
end
