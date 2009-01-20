module DMGen
  class Is < Templater::Generator
    first_argument :name, :required => true

    desc <<-eos
      Generates an 'is' plugin for DataMapper, such as dm-is-list.

      Use like
        dm-gen is plugin

      This generates the full plugin structure with skeleton code and specs, as
      well as a Rakefile.  All it needs is a README and some real functionality.

    eos

    def self.source_root
      File.join(File.dirname(__FILE__), '..', 'templates', 'is')
    end

    def gem_name
      "dm-is-#{snake_name}"
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

  add :is, Is
end
