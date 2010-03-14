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

class Film < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :location

  def duration=(new_duration)
    write_attribute('duration', new_duration)
  end

  def duration
    read_attribute('duration').strftime("%I:%M")
  end

end
