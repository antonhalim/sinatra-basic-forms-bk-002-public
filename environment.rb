# ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require(:default)

require 'sinatra/base'
require 'sinatra/reloader'

require 'sequel'
DB = Sequel.connect('sqlite://songs.db')

require './song'