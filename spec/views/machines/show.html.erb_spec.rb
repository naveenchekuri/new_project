require 'spec_helper'

describe "machines/show.html.erb" do
  before(:each) do
    @machine = assign(:machine, stub_model(Machine,
      :machine => "Machine",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Machine/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
