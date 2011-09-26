require 'spec_helper'

describe "machines/index.html.erb" do
  before(:each) do
    assign(:machines, [
      stub_model(Machine,
        :machine => "Machine",
        :name => "Name"
      ),
      stub_model(Machine,
        :machine => "Machine",
        :name => "Name"
      )
    ])
  end

  it "renders a list of machines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Machine".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
