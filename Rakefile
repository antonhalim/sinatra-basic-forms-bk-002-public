require_relative './config/environment.rb'
require 'sinatra/activerecord/rake'

namespace :db do
  desc 'add test data to the database'
  task :seed do
    Song.create({
      title: 'Smells Like Teen Spirit',
      artist: 'Metallica',
      album: 'Ride the Lightning',
      genre: 'Metal',
      length: '3:25'
    })

    Song.create({
      title: 'Bohemian Rhapsody',
      artist: 'Bon Jovi',
      album: 'A Night at the Opera',
      genre: 'Rock',
      length: '3:55'
    })

    Song.create({
      title: 'One Piece at a Time',
      artist: 'Chuck Berry',
      album: 'One Piece at a Time',
      genre: 'Rockabilly',
      length: '4:00'
    })
  end
end
