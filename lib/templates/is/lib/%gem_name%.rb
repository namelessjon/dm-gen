# Needed to import datamapper and other gems
require 'rubygems'
require 'pathname'

# Add all external dependencies for the plugin here
gem 'dm-core', '~>0.9.10'
require 'dm-core'

# Require plugin-files
require Pathname(__FILE__).dirname.expand_path / '<%= gem_name %>' / 'is' / '<%= snake_name %>.rb'


# Include the plugin in Resource
module DataMapper
  module Resource
    module ClassMethods
      include DataMapper::Is::<%= class_name %>
    end # module ClassMethods
  end # module Resource
end # module DataMapper
