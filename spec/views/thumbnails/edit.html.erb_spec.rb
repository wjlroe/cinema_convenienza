require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/thumbnails/edit.html.erb" do
  include ThumbnailsHelper

  before(:each) do
    assigns[:thumbnail] = @thumbnail = stub_model(Thumbnail,
      :new_record? => false
    )
  end

  it "renders the edit thumbnail form" do
    render

    response.should have_tag("form[action=#{thumbnail_path(@thumbnail)}][method=post]") do
    end
  end
end
