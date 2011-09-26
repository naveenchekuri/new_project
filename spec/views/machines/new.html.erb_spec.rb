require 'spec_helper'

describe "machines/new.html.erb" do
  before(:each) do
    assign(:machine, stub_model(Machine,
      :machine => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machines_path, :method => "post" do
      assert_select "input#machine_machine", :name => "machine[machine]"
      assert_select "input#machine_name", :name => "machine[name]"
    end
  end
end
