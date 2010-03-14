require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/thumbnails/new.html.erb" do
  include ThumbnailsHelper

  before(:each) do
    assigns[:thumbnail] = stub_model(Thumbnail,
      :new_record? => true
    )
  end

  it "renders new thumbnail form" do
    render

    response.should have_tag("form[action=?][method=post]", thumbnails_path) do
    end
  end
end
