require 'templater'

# setup manifold
module DMGen
  extend Templater::Manifold

  DM_VERSION = '0.10.0'

  desc <<-eos
    Generates files for the DataMapper ORM.
  eos
end

# require generators
require 'dm-gen/generators/one_file'
require 'dm-gen/generators/is'
require 'dm-gen/generators/adapter'
