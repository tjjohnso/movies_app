require 'spec_helper'

describe "movies/new.html.erb" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :title => "MyString",
      :year => 1,
      :director => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movies_path, :method => "post" do
      assert_select "input#movie_title", :name => "movie[title]"
      assert_select "input#movie_year", :name => "movie[year]"
      assert_select "input#movie_director", :name => "movie[director]"
      assert_select "textarea#movie_description", :name => "movie[description]"
    end
  end
end
