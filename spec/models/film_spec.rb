# == Schema Information
#
# Table name: films
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  duration     :time
#  release_date :datetime
#  location     :string(255)
#  format       :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Film do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :duration => Time.now,
      :release_date => Time.now,
      :location => "value for location",
      :format => "value for format"
    }
  end

  it "should create a new instance given valid attributes" do
    Film.create!(@valid_attributes)
  end
end
