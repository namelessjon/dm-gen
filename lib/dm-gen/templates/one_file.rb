#!/usr/bin/env ruby
#
# A one file test to show ...
require 'rubygems'
require 'dm-core'
require 'dm-migrations'


# setup the logger
DataMapper::Logger.new($stdout, :debug)

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

DataMapper.finalize.auto_migrate!

# put the code here!


__END__

# put a copy of the output here!

