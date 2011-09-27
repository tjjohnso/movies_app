require 'spec_helper'

describe "actors/new.html.erb" do
  before(:each) do
    assign(:actor, stub_model(Actor,
      :name => "MyString",
      :gender => "MyString",
      :nationality => "MyString"
    ).as_new_record)
  end

  it "renders new actor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => actors_path, :method => "post" do
      assert_select "input#actor_name", :name => "actor[name]"
      assert_select "input#actor_gender", :name => "actor[gender]"
      assert_select "input#actor_nationality", :name => "actor[nationality]"
    end
  end
end
