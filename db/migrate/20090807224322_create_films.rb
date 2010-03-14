class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
      t.string :name
      t.time :duration
      t.datetime :release_date
      t.string :location
      t.string :format

      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end
