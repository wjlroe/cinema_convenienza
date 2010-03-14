# == Schema Information
#
# Table name: thumbnails
#
#  id                 :integer         not null, primary key
#  thumb_file_name    :string(255)
#  thumb_content_type :string(255)
#  thumb_file_size    :integer
#  created_at         :datetime
#  updated_at         :datetime
#

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Thumbnail do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Thumbnail.create!(@valid_attributes)
  end
end
