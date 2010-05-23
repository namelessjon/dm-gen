require 'dm-core'

module DataMapper
  module Is
    module <%= class_name %>

      # method for making your model a <%= name %>
      #
      # @api public
      def is_<%= name %>(options={})

        extend  DataMapper::Is::<%= class_name %>::ClassMethods
        include DataMapper::Is::<%= class_name %>::InstanceMethods

        # other setup goes here!


      end # is_list

      module ClassMethods
      end

      module InstanceMethods
      end # InstanceMethods
    end # <%= class_name %>
  end # Is

  Model.append_extensions(Is::<%= class_name %>)

end # DataMapper
