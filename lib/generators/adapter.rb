module DMGen
  class Adapter < Templater::Generator
    first_argument :name, :required => true

    desc <<-eos
      Generates a DataMapper Adapter skeleton.

      Use like
        dm-gen adapter data_source

      This generates the full plugin structure with skeleton code and specs, as
      well as a Rakefile.  All it needs is a README and some real functionality.
    eos

    def self.source_root
      File.join(File.dirname(__FILE__), '..', 'templates', 'adapter')
    end

    def gem_name
      "dm-#{adapter_name}"
    end

    def adapter_name
      "#{snake_name}-adapter"
    end

    def snake_name
      name.snake_case
    end

    def class_name
      name.camel_case
    end

    def destination_root
      File.join(@destination_root, gem_name)
    end

    # glob the template dir for all templates.
    # since we want text files processed, we have to replace the default
    # extension list.
    glob!('', %w[rb txt Rakefile LICENSE TODO])
  end

  add :adapter, Adapter
end
