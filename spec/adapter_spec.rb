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
    @generator.should create('/tmp/dm-awesome-adapter/spec/integration/awesome_spec.rb')
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
end
