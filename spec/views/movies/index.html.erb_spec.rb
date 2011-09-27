require 'spec_helper'

describe "movies/index.html.erb" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :title => "Title",
        :year => 1,
        :director => "Director",
        :description => "MyText"
      ),
      stub_model(Movie,
        :title => "Title",
        :year => 1,
        :director => "Director",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
