require File.dirname(__FILE__) + '/spec_helper'

describe "DMGen::Adapter" do
  before do
    @generator = DMGen::Adapter.new('/tmp', {}, 'awesome')
  end

  # basic file creation.
  it "creates a Rakefile" do
    @generator.should create('/tmp/dm-awesome-adapter/Rakefile')
  end
  it "creates the lib folder layout" do
    @generator.should create('/tmp/dm-awesome-adapter/lib/awesome_adapter.rb')
    @generator.should create('/tmp/dm-awesome-adapter/lib/awesome_adapter/version.rb')
  end
  it "creates the spec folder layout" do
    @generator.should create('/tmp/dm-awesome-adapter/spec/integration/awesome_adapter_spec.rb')
    @generator.should create('/tmp/dm-awesome-adapter/spec/spec.opts')
    @generator.should create('/tmp/dm-awesome-adapter/spec/spec_helper.rb')
  end
  it "creates a README" do
    @generator.should create('/tmp/dm-awesome-adapter/README.txt')
  end
  it "creates a History file" do
    @generator.should create('/tmp/dm-awesome-adapter/History.txt')
  end
  it "creates a LICENSE" do
    @generator.should create('/tmp/dm-awesome-adapter/LICENSE')
  end
  it "creates a Manifest for Hoe" do
    @generator.should create('/tmp/dm-awesome-adapter/Manifest.txt')
  end
  it "creates a TODO list" do
    @generator.should create('/tmp/dm-awesome-adapter/TODO')
  end
  it "creates support tasks" do
    @generator.should create('/tmp/dm-awesome-adapter/tasks/spec.rb')
    @generator.should create('/tmp/dm-awesome-adapter/tasks/install.rb')
  end

  describe "Manifest.txt" do
    before do
      @template = @generator.template(:manifest_txt)
      @result = @template.render
    end

    it "contains itself" do
      @result.should.be.a.match(/^Manifest.txt$/)
    end

  end

  describe "version.rb" do
    before do
      @template = @generator.template(:lib_adapter_file_version_rb)
      @result = @template.render
    end

    it "generates the correct output" do
      @result.should.include(<<-eos)
module DataMapper
  module AwesomeAdapter
    VERSION = '0.0.1'
  end
end
eos
    end
  end

  describe "spec/spec_helper.rb" do
    before do
      @template = @generator.template(:spec_spec_helper_rb)
      @result = @template.render
    end

    it "contains a connection string for the new adapter" do
      @result.should.include('DataMapper.setup(:default, "awesome://some/uri/here")')
    end

    it "requires the adapter library" do
      @result.should.be.a.match(/require .*lib\/awesome_adapter/)
    end

  end
end
