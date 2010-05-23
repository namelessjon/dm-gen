require File.dirname(__FILE__) + '/spec_helper'

describe "DMGen::Is" do
  before do
    @generator = DMGen::Is.new('/tmp', {}, 'awesome')
  end

  describe "renders all templates without errors" do
    DMGen::Is.new('/tmp', {}, 'awesome').templates.each do |template|
      it "should render '#{template.name}' without raising" do
        lambda { template.render }.should.not.raise(Exception)
      end
    end
  end

  # basic file creation.
  it "creates a Rakefile" do
    @generator.should create('/tmp/dm-is-awesome/Rakefile')
  end
  it "creates the lib folder layout" do
    @generator.should create('/tmp/dm-is-awesome/lib/dm-is-awesome.rb')
    @generator.should create('/tmp/dm-is-awesome/lib/dm-is-awesome/is/awesome.rb')
  end
  it "creates the spec folder layout" do
    @generator.should create('/tmp/dm-is-awesome/spec/integration/awesome_spec.rb')
    @generator.should create('/tmp/dm-is-awesome/spec/spec.opts')
    @generator.should create('/tmp/dm-is-awesome/spec/spec_helper.rb')
  end
  it "creates a README" do
    @generator.should create('/tmp/dm-is-awesome/README.rdoc')
  end
  it "creates a LICENSE" do
    @generator.should create('/tmp/dm-is-awesome/LICENSE')
  end
  it "creates support tasks" do
    @generator.should create('/tmp/dm-is-awesome/tasks/local_gemfile.rake')
    @generator.should create('/tmp/dm-is-awesome/tasks/spec.rake')
    @generator.should create('/tmp/dm-is-awesome/tasks/yard.rake')
    @generator.should create('/tmp/dm-is-awesome/tasks/yardstick.rake')
  end
end
