module DMGen
  module PluginGenerator

    def self.included(model)
      model.extend(ClassMethods)

      # all plugins need a name
      model.first_argument :name, :required => true

      # glob the template dir for all templates.
      # since we want text files processed, we have to replace the default
      # extension list.
      model.glob!('', %w[rb txt Rakefile LICENSE README.rdoc])

      model.file :gitignore, '.gitignore'
    end

    def gem_name
      raise NotImplementedError
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

    module ClassMethods
      def template_dir
        name.snake_case.split('::').last
      end

      def source_root
        File.join(File.dirname(__FILE__), '..', 'templates', template_dir)
      end
    end
  end
end
