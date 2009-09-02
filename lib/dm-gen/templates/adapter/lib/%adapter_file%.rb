require 'dm-core'

module DataMapper
  module Adapters
    # The documentation for this adapter was taken from
    #
    # lib/dm-core/adapters/in_memory_adapter.rb
    #
    # Which is intended as a general source of documentation for the
    # implementation to be followed by all DataMapper adapters.  The implementor
    # is well advised to read over the adapter before implementing their own.
    #
    class <%= class_name %> < AbstractAdapter
      ##
      # Used by DataMapper to put records into a data-store: "INSERT" in SQL-speak.
      # It takes an array of the resources (model instances) to be saved. Resources
      # each have a key that can be used to quickly look them up later without
      # searching, if the adapter supports it.
      #
      # @param [Enumerable(Resource)] resources
      #   The set of resources (model instances)
      #
      # @api semipublic
      def create(resources)
        raise NotImplementedError
      end

      ##
      # Looks up one record or a collection of records from the data-store:
      # "SELECT" in SQL.
      #
      # @param [Query] query
      #   The query to be used to seach for the resources
      #
      # @return [Array]
      #   An Array of Hashes containing the key-value pairs for
      #   each record
      #
      # @api semipublic
      def read(query)
        raise NotImplementedError
      end

      ##
      # Used by DataMapper to update the attributes on existing records in a
      # data-store: "UPDATE" in SQL-speak. It takes a hash of the attributes
      # to update with, as well as a collection object that specifies which resources
      # should be updated.
      #
      # @param [Hash] attributes
      #   A set of key-value pairs of the attributes to update the resources with.
      # @param [DataMapper::Collection] resources
      #   The collection of resources to update.
      #
      # @api semipublic
      def update(attributes, collection)
        raise NotImplementedError
      end

      ##
      # Destroys all the records matching the given query. "DELETE" in SQL.
      #
      # @param [DataMapper::Collection] resources
      #   The collection of resources to delete.
      #
      # @return [Integer]
      #   The number of records that were deleted.
      #
      # @api semipublic
      def delete(collection)
        raise NotImplementedError
      end

      private

      ##
      # Make a new instance of the adapter.
      # 
      # @param [String, Symbol] name
      #   The name of the Repository using this adapter.
      # @param [String, Hash] uri_or_options
      #   The connection uri string, or a hash of options to set up
      #   the adapter
      #
      # @api semipublic
      def initialize(name, options = {})
        super
      end

    end # class <%= class_name %>

    ##
    #
    # This can be used by plugins to trigger hooks for your adapter.
    const_added(:<%= class_name %>)
  end # module Adapters
end # module DataMapper
