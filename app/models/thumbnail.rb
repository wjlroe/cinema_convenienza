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

class Thumbnail < ActiveRecord::Base
  has_attached_file :thumb,
  :styles => {
  :thumb => "100x100#",
  :small => "150x150>" }
end
