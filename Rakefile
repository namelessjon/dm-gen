require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "dm-gen"
    s.summary = "Simple commandline tool for generating DataMapper related files"
    s.email = "jonathan.stott@gmail.com"
    s.homepage = "http://github.com/namelessjon/dm-gen"
    s.description = <<-eos
dm-gen is a simple commandline tool for generating DataMapper related files.
It includes generators for standalone or one file examples, is plugins, adapters
and may eventually be expanded to do more.
eos
    s.authors = ["Jonathan Stott"]
    s.executables = 'dm-gen'
    s.rdoc_options = %w{--exclude lib/dm-gen/templates --title dm-gen --line-numbers --inline-source --main README.rdoc}
    s.add_dependency('templater', '~> 1.0')
  end
  Jeweler::GemcutterTasks.new
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
