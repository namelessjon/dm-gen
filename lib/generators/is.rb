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

    # glob the template dir for all templates.
    glob!
  end

  add :is, Is
end