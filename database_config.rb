
require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'foodfinder',
  username: 'sandesh'
}

ActiveRecord::Base.establish_connection( ENV['DATABASE_URL'] || options)
