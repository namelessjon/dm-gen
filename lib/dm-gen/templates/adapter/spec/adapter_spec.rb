require 'spec_helper'

require 'dm-core'
require 'dm-core/spec/shared/adapter_spec'

require 'dm-migrations'
require '<%= gem_name %>/spec/setup'

ENV['ADAPTER']          = '<%= snake_name %>'
ENV['ADAPTER_SUPPORTS'] = 'all'

describe 'DataMapper::Adapters::<%= class_name %>' do

  before :all do
    @adapter    = DataMapper::Spec.adapter
    @repository = DataMapper.repository(@adapter.name)
  end

  it_should_behave_like "An Adapter"

end
