require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/films/show.html.haml" do
  include FilmsHelper
  before(:each) do
    assigns[:film] = @film = stub_model(Film,
      :name => "value for name",
      :location => "value for location",
      :format => "value for format"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ location/)
    response.should have_text(/value\ for\ format/)
  end
end
