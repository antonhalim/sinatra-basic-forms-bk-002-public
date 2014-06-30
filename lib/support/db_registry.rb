DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("db/songs-test.db"), 
  development: ConnectionAdapter.new("db/songs-development.db"), 
  production: ConnectionAdapter.new("db/songs-production.db")
  )