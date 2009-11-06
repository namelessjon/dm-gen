# Add all external dependencies for the plugin here
# require 'dm-core' - this can probably be assumed.

# Require plugin-files
require '<%= gem_name %>/is/<%= snake_name %>.rb'

# Include the plugin in DM models
DataMapper::Model.append_extensions DataMapper::Is::<%= class_name %>
