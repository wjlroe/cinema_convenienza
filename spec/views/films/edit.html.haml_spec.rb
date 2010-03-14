require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/films/edit.html.haml" do
  include FilmsHelper

  before(:each) do
    assigns[:film] = @film = stub_model(Film,
      :new_record? => false,
      :name => "value for name",
      :location => "value for location",
      :format => "value for format"
    )
  end

  it "renders the edit film form" do
    render

    response.should have_tag("form[action=#{film_path(@film)}][method=post]") do
      with_tag('input#film_name[name=?]', "film[name]")
      with_tag('input#film_location[name=?]', "film[location]")
      with_tag('input#film_format[name=?]', "film[format]")
    end
  end
end
