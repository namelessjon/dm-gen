require File.dirname(__FILE__) + '/spec_helper'

describe "DMGen::Adapter" do
  before do
    @generator = DMGen::Adapter.new('/tmp', {}, 'awesome')
  end


  describe "renders all templates without errors" do
    DMGen::Adapter.new('/tmp', {}, 'awesome').templates.each do |template|
      it "should render '#{template.name}' without raising" do
        lambda { template.render }.should.not.raise(Exception)
      end
    end
  end

  # basic file creation.
  it "creates a Rakefile" do
    @generator.should create('/tmp/dm-awesome-adapter/Rakefile')
  end
  it "creates the lib folder layout" do
    @generator.should create('/tmp/dm-awesome-adapter/lib/dm-awesome-adapter.rb')
    @generator.should create('/tmp/dm-awesome-adapter/lib/dm-awesome-adapter/adapter.rb')
    @generator.should create('/tmp/dm-awesome-adapter/lib/dm-awesome-adapter/spec/setup.rb')
  end
  it "creates the spec folder layout" do
    @generator.should create('/tmp/dm-awesome-adapter/spec/adapter_spec.rb')
    @generator.should create('/tmp/dm-awesome-adapter/spec/spec.opts')
    @generator.should create('/tmp/dm-awesome-adapter/spec/rcov.opts')
    @generator.should create('/tmp/dm-awesome-adapter/spec/spec_helper.rb')
  end
  it "creates a README" do
    @generator.should create('/tmp/dm-awesome-adapter/README.rdoc')
  end
  it "creates a LICENSE" do
    @generator.should create('/tmp/dm-awesome-adapter/LICENSE')
  end
  it "creates a Gemfile" do
    @generator.should create('/tmp/dm-awesome-adapter/Gemfile')
  end
  it "creates a .gitignore" do
    @generator.should create('/tmp/dm-awesome-adapter/.gitignore')
  end
  it "creates support tasks" do
    @generator.should create('/tmp/dm-awesome-adapter/tasks/local_gemfile.rake')
    @generator.should create('/tmp/dm-awesome-adapter/tasks/spec.rake')
    @generator.should create('/tmp/dm-awesome-adapter/tasks/yard.rake')
    @generator.should create('/tmp/dm-awesome-adapter/tasks/yardstick.rake')
  end

  describe "spec/spec_helper.rb" do
    before do
      @template = @generator.template(:spec_spec_helper_rb)
      @result = @template.render
    end

  end

  describe "Rakefile" do
    before do
      @template = @generator.template(:rakefile)
        @result = @template.render
    end

    it "includes an approriate dependency on dm-core" do
      @result.should.include("gem.add_dependency 'dm-core', '~> #{DMGen::DM_VERSION}'")
    end
  end

  describe "LICENSE" do
    before do
      @template = @generator.template(:license)
      @result = @template.render
    end

    it "has the correct copyright declaration" do
      @result.should.include("Copyright (c) #{Time.now.year} NAME")
    end

  end
end
