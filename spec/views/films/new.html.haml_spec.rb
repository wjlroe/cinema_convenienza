require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/films/new.html.haml" do
  include FilmsHelper

  before(:each) do
    assigns[:film] = stub_model(Film,
      :new_record? => true,
      :name => "value for name",
      :location => "value for location",
      :format => "value for format"
    )
  end

  it "renders new film form" do
    render

    response.should have_tag("form[action=?][method=post]", films_path) do
      with_tag("input#film_name[name=?]", "film[name]")
      with_tag("input#film_location[name=?]", "film[location]")
      with_tag("input#film_format[name=?]", "film[format]")
    end
  end
end
