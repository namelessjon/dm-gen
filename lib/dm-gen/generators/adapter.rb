require 'dm-gen/generators/plugin_generator'
module DMGen
  class Adapter < Templater::Generator
    include PluginGenerator

    desc <<-eos
      Generates a DataMapper Adapter skeleton.

      Use like
        dm-gen adapter data_source

      This generates the full plugin structure with skeleton code and specs, as
      well as a Rakefile.  All it needs is a README and some real functionality.
    eos

    def gem_name
      "dm-#{snake_name}-adapter"
    end

    def class_name
      "#{name.camel_case}Adapter"
    end

  end

  add :adapter, Adapter
end
