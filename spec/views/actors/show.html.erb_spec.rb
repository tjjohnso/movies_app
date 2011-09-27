require 'spec_helper'

describe "actors/show.html.erb" do
  before(:each) do
    @actor = assign(:actor, stub_model(Actor,
      :name => "Name",
      :gender => "Gender",
      :nationality => "Nationality"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nationality/)
  end
end
