require 'spec_helper'

describe "blocks/new.html.erb" do
  before(:each) do
    assign(:block, stub_model(Block,
      :name => "MyString",
      :ubicacion => "MyString",
      :superficie => 1
    ).as_new_record)
  end

  it "renders new block form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blocks_path, :method => "post" do
      assert_select "input#block_name", :name => "block[name]"
      assert_select "input#block_ubicacion", :name => "block[ubicacion]"
      assert_select "input#block_superficie", :name => "block[superficie]"
    end
  end
end