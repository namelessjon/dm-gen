require '<%= gem_name %>'
require 'dm-core/spec/setup'


module DataMapper
  module Spec
    module Adapters

      # This class sets up the adapter for the spec framework DataMapper ships
      # with
      class <%= class_name %> < Adapter
        def connection_uri
          "<%= snake_name %>://..."
        end
      end

      use <%= class_name %>

    end
  end
end
