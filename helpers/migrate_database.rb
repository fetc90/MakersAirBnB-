require 'data_mapper'
require_relative '../lib/user'
require_relative '../lib/dreambnb'
require_relative '../lib/database_connection_setup'

DataMapper.auto_migrate!
DataMapper.auto_upgrade!
