require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "dm-gen"
    s.summary = "Simple commandline tool for generating dm models"
    s.email = "jonathan.stott@gmail.com"
    s.homepage = "http://github.com/namelessjon/dm-gen"
    s.description = s.summary
    s.authors = ["Jonathan Stott"]
    s.executables = 'dm-gen'
    s.files =  FileList["[A-Z]+", "*.rdoc", "{bin,lib,spec}/**/*"]
    s.add_dependency('templater', '~> 0.5.0')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
  puts "Or just 'gem build dm-gen.gemspec' and then install the gem."
end

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'spec/**/*_spec.rb'
  t.verbose = false
end

Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'dm-gen'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |t|
    t.libs << "spec"
    t.test_files = FileList['spec/**/*_spec.rb']
    t.verbose = true
  end
rescue LoadError
  # just do nothing
end

task :default => :test
