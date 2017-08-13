require 'sqlite3'
require 'active_record'

# Change the following to reflect your database settings
ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: './spec/db/graph.db'
)
