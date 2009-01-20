module DataMapper
  module Is
    module <%= class_name %>

      ##
      # fired when your plugin gets included into Resource
      #
      def self.included(base)

      end

      ##
      # Methods that should be included in DataMapper::Model.
      # Normally this should just be your generator, so that the namespace
      # does not get cluttered. ClassMethods and InstanceMethods gets added
      # in the specific resources when you fire is :<%= snake_name %>
      ##

      def is_<%= snake_name %>(options)

        # Add class-methods
        extend  DataMapper::Is::<%= class_name %>::ClassMethods
        # Add instance-methods
        include DataMapper::Is::<%= class_name %>::InstanceMethods

      end

      module ClassMethods

      end # ClassMethods

      module InstanceMethods

      end # InstanceMethods

    end # <%= class_name %>
  end # Is
end # DataMapper
