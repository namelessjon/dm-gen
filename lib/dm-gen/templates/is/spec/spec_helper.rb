require 'dm-core/spec/setup'
require 'dm-core/spec/lib/adapter_helpers'

require '<%= gem_name %>'
require 'dm-migrations'

DataMapper::Spec.setup


Spec::Runner.configure do |config|
  config.extend(DataMapper::Spec::Adapters::Helpers)
end
