require 'data_mapper'
require 'dm-postgres-adapter'
require_relative './user'

class Listing
  include DataMapper::Resource

  property :prop_id,             Serial
  # property :user_id,             Serial, :required => false  # once we merge we will make this true
  property :name,                String, :required => true
  property :description,         String, :required => true
  property :price,               String, :required => true
  property :available_from,      DateTime
  property :available_until,     DateTime

  belongs_to :user, :required => false


end
