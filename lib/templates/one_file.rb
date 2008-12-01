#!/usr/bin/env ruby
#
# A one file test to show ...
require 'rubygems'

gem('dm-core', '~> 0.9.7')
require 'dm-core'


# setup the logger
DataMapper::Logger.new(STDOUT, :debug)

# connect to the DB
DataMapper.setup(:default, 'sqlite3::memory:')

class <%= model_name %>
  include DataMapper::Resource

  # properties
  property :id, Serial
<% attributes.each do |name, type| -%>
  property :<%= name.snake_case %>, <%= type.camel_case %>
<% end %>
end

DataMapper.auto_migrate!
