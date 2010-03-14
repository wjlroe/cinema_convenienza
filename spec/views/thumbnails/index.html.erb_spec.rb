require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/thumbnails/index.html.erb" do
  include ThumbnailsHelper

  before(:each) do
    assigns[:thumbnails] = [
      stub_model(Thumbnail),
      stub_model(Thumbnail)
    ]
  end

  it "renders a list of thumbnails" do
    render
  end
end
