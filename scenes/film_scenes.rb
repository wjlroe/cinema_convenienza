require 'machinist'
require 'spec/blueprints'
require 'spec/mocks'

set_scene "Default config" do
end

set_scene "1 film" do
  get_scene('Default config').play
  Film.make( :name => 'Solaris' )
end

set_scene "4 films" do
  get_scene('Default config').play
  Film.make( :name => 'Solaris' )
  Film.make( :name => 'Cinema Paradiso' )
  Film.make( :name => 'Beautiful Mind' )
  Film.make( :name => 'Persepolis' )
end
