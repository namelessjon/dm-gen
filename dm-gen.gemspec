# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-gen}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonathan Stott"]
  s.date = %q{2010-06-09}
  s.default_executable = %q{dm-gen}
  s.description = %q{dm-gen is a simple commandline tool for generating DataMapper related files.
It includes generators for standalone or one file examples, is plugins, adapters
and may eventually be expanded to do more.
}
  s.email = %q{jonathan.stott@gmail.com}
  s.executables = ["dm-gen"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "CHANGELOG.rdoc",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/dm-gen",
     "dm-gen.gemspec",
     "lib/dm-gen/generators/adapter.rb",
     "lib/dm-gen/generators/is.rb",
     "lib/dm-gen/generators/one_file.rb",
     "lib/dm-gen/generators/plugin_generator.rb",
     "lib/dm-gen/templates/adapter/.gitignore",
     "lib/dm-gen/templates/adapter/Gemfile",
     "lib/dm-gen/templates/adapter/LICENSE",
     "lib/dm-gen/templates/adapter/README.rdoc",
     "lib/dm-gen/templates/adapter/Rakefile",
     "lib/dm-gen/templates/adapter/lib/%gem_name%.rb",
     "lib/dm-gen/templates/adapter/lib/%gem_name%/adapter.rb",
     "lib/dm-gen/templates/adapter/lib/%gem_name%/spec/setup.rb",
     "lib/dm-gen/templates/adapter/spec/adapter_spec.rb",
     "lib/dm-gen/templates/adapter/spec/rcov.opts",
     "lib/dm-gen/templates/adapter/spec/spec.opts",
     "lib/dm-gen/templates/adapter/spec/spec_helper.rb",
     "lib/dm-gen/templates/adapter/tasks/local_gemfile.rake",
     "lib/dm-gen/templates/adapter/tasks/spec.rake",
     "lib/dm-gen/templates/adapter/tasks/yard.rake",
     "lib/dm-gen/templates/adapter/tasks/yardstick.rake",
     "lib/dm-gen/templates/is/.gitignore",
     "lib/dm-gen/templates/is/Gemfile",
     "lib/dm-gen/templates/is/LICENSE",
     "lib/dm-gen/templates/is/README.rdoc",
     "lib/dm-gen/templates/is/Rakefile",
     "lib/dm-gen/templates/is/VERSION",
     "lib/dm-gen/templates/is/lib/%gem_name%.rb",
     "lib/dm-gen/templates/is/lib/%gem_name%/is/%name%.rb",
     "lib/dm-gen/templates/is/spec/integration/%name%_spec.rb",
     "lib/dm-gen/templates/is/spec/rcov.opts",
     "lib/dm-gen/templates/is/spec/spec.opts",
     "lib/dm-gen/templates/is/spec/spec_helper.rb",
     "lib/dm-gen/templates/is/tasks/ci.rake",
     "lib/dm-gen/templates/is/tasks/local_gemfile.rake",
     "lib/dm-gen/templates/is/tasks/metrics.rake",
     "lib/dm-gen/templates/is/tasks/spec.rake",
     "lib/dm-gen/templates/is/tasks/yard.rake",
     "lib/dm-gen/templates/is/tasks/yardstick.rake",
     "lib/dm-gen/templates/one_file.rb",
     "lib/dm_gen.rb",
     "spec/adapter_spec.rb",
     "spec/dm_gen_spec.rb",
     "spec/is_plugin_spec.rb",
     "spec/one_file_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/namelessjon/dm-gen}
  s.rdoc_options = ["--exclude", "lib/dm-gen/templates", "--title", "dm-gen", "--line-numbers", "--inline-source", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple commandline tool for generating DataMapper related files}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/adapter_spec.rb",
     "spec/dm_gen_spec.rb",
     "spec/one_file_spec.rb",
     "spec/is_plugin_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<templater>, ["~> 1.0"])
    else
      s.add_dependency(%q<templater>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<templater>, ["~> 1.0"])
  end
end

