gem 'dm-core', '~>0.9.10'
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
      # @param [Array<DataMapper::Resource>] resources
      #   The set of resources (model instances)
      #
      # @return [Integer]
      #   The number of records that were actually saved into the data-store
      #
      # @api semipublic
      def create(resources)
        raise NotImplementedError
      end

      ##
      # Used by DataMapper to update the attributes on existing records in a
      # data-store: "UPDATE" in SQL-speak. It takes a hash of the attributes
      # to update with, as well as a query object that specifies which resources
      # should be updated.
      #
      # @param [Hash] attributes
      #   A set of key-value pairs of the attributes to update the resources with.
      # @param [DataMapper::Query] query
      #   The query that should be used to find the resource(s) to update.
      #
      # @return [Integer]
      #   the number of records that were successfully updated
      #
      # @api semipublic
      def update(attributes, query)
        raise NotImplementedError
      end

      ##
      # Look up a single record from the data-store. "SELECT ... LIMIT 1" in SQL.
      # Used by Model#get to find a record by its identifier(s), and Model#first
      # to find a single record by some search query.
      #
      # @param [DataMapper::Query] query
      #   The query to be used to locate the resource.
      #
      # @return [DataMapper::Resource]
      #   A Resource object representing the record that was found, or nil for no
      #   matching records.
      #
      # @api semipublic
      def read_one(query)
        raise NotImplementedError
      end

      ##
      # Looks up a collection of records from the data-store: "SELECT" in SQL.
      # Used by Model#all to search for a set of records; that set is in a
      # DataMapper::Collection object.
      #
      # @param [DataMapper::Query] query
      #   The query to be used to seach for the resources
      #
      # @return [DataMapper::Collection]
      #   A collection of all the resources found by the query.
      #
      # @api semipublic
      def read_many(query)
        raise NotImplementedError
      end

      ##
      # Destroys all the records matching the given query. "DELETE" in SQL.
      #
      # @param [DataMapper::Query] query
      #   The query used to locate the resources to be deleted.
      #
      # @return [Integer]
      #   The number of records that were deleted.
      #
      # @api semipublic
      def delete(query)
        raise NotImplementedError
      end

      private

      ##
      # Make a new instance of the adapter. The @model_records ivar is the 'data-store'
      # for this adapter. It is not shared amongst multiple incarnations of this
      # adapter, eg DataMapper.setup(:default, :adapter => :in_memory);
      # DataMapper.setup(:alternate, :adapter => :in_memory) do not share the
      # data-store between them.
      #
      # @param [String, Symbol] name
      #   The name of the DataMapper::Repository using this adapter.
      # @param [String, Hash] uri_or_options
      #   The connection uri string, or a hash of options to set up
      #   the adapter
      #
      # @api semipublic
      def initialize(name, uri_or_options)
        super
        @identity_maps = {}
      end

    end
  end
end
