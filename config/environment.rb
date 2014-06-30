require 'yaml/store'
require 'ostruct'
require 'bundler/setup'
Bundler.require

DBNAME = "songs"

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

DBRegistry[ENV["ACTIVE_RECORD_ENV"]].connect!
DB = ActiveRecord::Base.connection

if ENV["ACTIVE_RECORD_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end

RAKE_APP ||= begin
  app = Rake.application
  app.init
  app.load_rakefile
  app
end