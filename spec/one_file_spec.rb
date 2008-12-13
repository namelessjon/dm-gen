require File.dirname(__FILE__) + '/spec_helper'


shared "one file generator" do
  before do
    @result = @generator.render!.first
  end

  it "successfully renders" do
    lambda {  @generator.render! }.should.not.raise
  end

  it "makes a file named 'validation_test.rb' when passed 'validation_test'" do
    @generator.should create('/tmp/validation_test.rb')
  end

  it "makes a file named 'validation_test.rb' when passed 'validation_test.rb'" do
    @generator = DMGen::OneFile.new('/tmp', {}, 'validation_test.rb')
    @generator.should create('/tmp/validation_test.rb')
  end

  # model stuff
  it "includes DataMapper::Resource" do
    @result.should.match(/include DataMapper::Resource/)
  end

  it "has a serial id property" do
    @result.should.match(/property :id, Serial/)
  end

  # requires
  it "requires rubygems" do
    @result.should.match(/require 'rubygems'/)
  end

  it "requires dm-core" do
    @result.should.match(/require 'dm-core'/)
  end

  # other boilerplate
  it "sets up a logger" do
    @result.should.match(/DataMapper::Logger\.new\(STDOUT, :debug\)/)
  end

  it "sets up a connection to an sqlite3 in-memory db" do
    @result.should.match(/DataMapper\.setup\(:default, 'sqlite3::memory:'\)/)
  end

  it "automigrates the db!" do
    @result.should.match(/DataMapper\.auto_migrate!/)
  end
end



describe "DMGen::OneFile" do
  describe "with name option only" do
    before do
      @generator = DMGen::OneFile.new('/tmp', {}, 'validation_test')
    end

    behaves_like "one file generator"

    it "makes a Model called TestModel" do
      @result.should.match(/class TestModel/)
    end
  end


  describe "with a model name too!" do
    before do
      @generator = DMGen::OneFile.new('/tmp', {}, 'validation_test', 'post')
    end

    behaves_like "one file generator"

    it "makes a Model called Post" do
      @result.should.match(/class Post/)
    end
  end


  describe "and attributes!" do
    before do
      @generator = DMGen::OneFile.new('/tmp', {}, 'validation_test', 'post',
          'title:string,PostBody:text,created_at:date_time,id:serial')
    end

    behaves_like "one file generator"

    it "makes a Model called Post" do
      @result.should.match(/class Post/)
    end

    it "includes the title property as a string" do
      @result.should.match(/property :title, String/)
    end

    it "snake cases the property name" do
      @result.should.match(/property :post_body, Text/)
    end

    it "camel cases the property type" do
      @result.should.match(/property :created_at, DateTime/)
    end

    it "only includes a serial property once" do
      @result.should.not.match(/property :id, Serial.*?property :id, Serial/m)
    end
  end
end
