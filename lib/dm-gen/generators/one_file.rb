module DMGen
  class OneFile < Templater::Generator
    first_argument :name, :required => true
    second_argument :model
    third_argument :attributes, :as => :hash, :default => {}

    desc <<-eos
      Generates a 'one file test' for DataMapper, including debug logging and sqlite3 memory DB
      Use like 'dm-gen one_file filename [model] [model,attributes,here]'

      For example:
          dm-gen one_file validation_test Post title:string,body:text

        generates a one file test called 'validation_test.rb' which will have a class
        called Post in it, with 3 properties: a Serial id (added for free), and a title
        and a body.
    eos

    def self.source_root
      File.join(File.dirname(__FILE__), '..', 'templates')
    end

    template :one_file do |t|
      t.source = 'one_file.rb'
      t.destination = "#{self.filename}.rb"
    end

    def model_name
      (model) ? model.camel_case : "TestModel"
    end

    def filename
      name.sub(/\.rb\z/,'')
    end

    def properties
      h = {}
      attributes.each do |k, v|
        # skip if the property is named id
        next if k == "id"

        # convert to snake/camel case
        h[k.snake_case] = v.camel_case
      end
      h
    end

  end

  add :one_file, OneFile
end
