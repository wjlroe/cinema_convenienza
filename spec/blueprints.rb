require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.name { Faker::Lorem.sentence }
Sham.time { Time.parse("#{rand(5)}:#{rand(60)}") }
Sham.date { Date.civil(y=1959+rand(50), m=1+rand(12), d=1+rand(27)) }
Sham.location { '/Volumes/LaCie/Films/' + Faker::Lorem.words.to_s }
Sham.format { 'AVI' }
Sham.title { Faker::Lorem.words(2) }

Film.blueprint do
  name Sham.title
  duration Sham.time
  release_date Sham.date
  location Sham.location
  format 'AVI'
end
