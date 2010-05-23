require 'dm-gen/generators/plugin_generator'
module DMGen
  class Is < Templater::Generator
    include PluginGenerator

    desc <<-eos
      Generates an 'is' plugin for DataMapper, such as dm-is-list.

      Use like
        dm-gen is plugin

      This generates the full plugin structure with skeleton code and specs, as
      well as a Rakefile.  All it needs is a README and some real functionality.

    eos

    def gem_name
      "dm-is-#{snake_name}"
    end
  end

  add :is, Is
end
