# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-gen}
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonathan Stott"]
  s.date = %q{2009-09-02}
  s.default_executable = %q{dm-gen}
  s.description = %q{Simple commandline tool for generating dm models}
  s.email = %q{jonathan.stott@gmail.com}
  s.executables = ["dm-gen"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.rdoc",
     "README.rdoc",
     "bin/dm-gen",
     "lib/dm-gen/generators/adapter.rb",
     "lib/dm-gen/generators/is.rb",
     "lib/dm-gen/generators/one_file.rb",
     "lib/dm-gen/templates/adapter/History.txt",
     "lib/dm-gen/templates/adapter/LICENSE",
     "lib/dm-gen/templates/adapter/Manifest.txt",
     "lib/dm-gen/templates/adapter/README.txt",
     "lib/dm-gen/templates/adapter/Rakefile",
     "lib/dm-gen/templates/adapter/TODO",
     "lib/dm-gen/templates/adapter/lib/%adapter_file%.rb",
     "lib/dm-gen/templates/adapter/lib/%adapter_file%/version.rb",
     "lib/dm-gen/templates/adapter/spec/integration/%adapter_file%_spec.rb",
     "lib/dm-gen/templates/adapter/spec/spec.opts",
     "lib/dm-gen/templates/adapter/spec/spec_helper.rb",
     "lib/dm-gen/templates/adapter/tasks/install.rb",
     "lib/dm-gen/templates/adapter/tasks/spec.rb",
     "lib/dm-gen/templates/is/History.txt",
     "lib/dm-gen/templates/is/LICENSE",
     "lib/dm-gen/templates/is/Manifest.txt",
     "lib/dm-gen/templates/is/README.txt",
     "lib/dm-gen/templates/is/Rakefile",
     "lib/dm-gen/templates/is/TODO",
     "lib/dm-gen/templates/is/lib/%gem_name%.rb",
     "lib/dm-gen/templates/is/lib/%gem_name%/is/%snake_name%.rb",
     "lib/dm-gen/templates/is/lib/%gem_name%/is/version.rb",
     "lib/dm-gen/templates/is/spec/integration/%snake_name%_spec.rb",
     "lib/dm-gen/templates/is/spec/spec.opts",
     "lib/dm-gen/templates/is/spec/spec_helper.rb",
     "lib/dm-gen/templates/is/tasks/install.rb",
     "lib/dm-gen/templates/is/tasks/spec.rb",
     "lib/dm-gen/templates/one_file.rb",
     "lib/dm_gen.rb",
     "spec/adapter_spec.rb",
     "spec/dm_gen_spec.rb",
     "spec/is_plugin_spec.rb",
     "spec/one_file_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/namelessjon/dm-gen}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Simple commandline tool for generating dm models}
  s.test_files = [
    "spec/dm_gen_spec.rb",
     "spec/spec_helper.rb",
     "spec/adapter_spec.rb",
     "spec/is_plugin_spec.rb",
     "spec/one_file_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<templater>, ["~> 1.0"])
    else
      s.add_dependency(%q<templater>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<templater>, ["~> 1.0"])
  end
end
