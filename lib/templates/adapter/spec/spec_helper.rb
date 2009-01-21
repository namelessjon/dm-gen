require 'pathname'
require 'rubygems'

gem 'rspec', '~>1.1.11'
require 'spec'

require Pathname(__FILE__).dirname.expand_path.parent + 'lib/<%= adapter_file %>'

DataMapper.setup(:default, "Your connection string here")

