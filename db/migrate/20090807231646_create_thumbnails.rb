class CreateThumbnails < ActiveRecord::Migration
  def self.up
    create_table :thumbnails do |t|
      t.string :thumb_file_name
      t.string :thumb_content_type
      t.integer :thumb_file_size
      t.timestamps
    end
  end

  def self.down
    drop_table :thumbnails
  end
end
