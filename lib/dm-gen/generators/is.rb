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

    def manifest_files
      self.all_actions.map {|t| t.destination.gsub(/#{destination_root}\//,'') }.sort
    end
  end

  add :is, Is
end
