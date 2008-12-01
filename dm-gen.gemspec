# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-gen}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonathan Stott"]
  s.date = %q{2008-12-01}
  s.default_executable = %q{dm-gen}
  s.description = %q{Simple commandline tool for generating dm models}
  s.email = %q{jonathan.stott@gmail.com}
  s.executables = ["dm-gen"]
  s.files = ["bin/dm-gen", "lib/templates", "lib/templates/one_file.rb", "lib/generators", "lib/generators/one_file.rb", "lib/dm_gen.rb", "spec/spec_helper.rb", "spec/dm_gen_spec.rb"]
  s.homepage = %q{http://github.com/namelessjon/dm-gen}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Simple commandline tool for generating dm models}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<templater>, ["~> 0.5.0"])
    else
      s.add_dependency(%q<templater>, ["~> 0.5.0"])
    end
  else
    s.add_dependency(%q<templater>, ["~> 0.5.0"])
  end
end
