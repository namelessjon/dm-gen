#!/usr/bin/env ruby
#
# A one file test to show ...
require 'rubygems'

gem('dm-core', '~> <%= DMGen::DM_VERSION %>')
require 'dm-core'


# setup the logger
DataMapper::Logger.new(STDOUT, :debug)

# connect to the DB
DataMapper.setup(:default, 'sqlite3::memory:')

class <%= model_name %>
  include DataMapper::Resource

  # properties
  property :id, Serial
<% properties.each do |name, type| -%>
  property :<%= name %>, <%= type %>
<% end %>
end

DataMapper.auto_migrate!
