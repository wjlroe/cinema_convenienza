require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/films/index.html.haml" do
  include FilmsHelper

  before(:each) do
    assigns[:films] = [
      stub_model(Film,
        :name => "value for name",
        :location => "value for location",
        :format => "value for format"
      ),
      stub_model(Film,
        :name => "value for name",
        :location => "value for location",
        :format => "value for format"
      )
    ]
  end

  it "renders a list of films" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for location".to_s, 2)
    response.should have_tag("tr>td", "value for format".to_s, 2)
  end
end
