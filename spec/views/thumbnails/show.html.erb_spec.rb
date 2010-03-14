require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/thumbnails/show.html.erb" do
  include ThumbnailsHelper
  before(:each) do
    assigns[:thumbnail] = @thumbnail = stub_model(Thumbnail)
  end

  it "renders attributes in <p>" do
    render
  end
end
