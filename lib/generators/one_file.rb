module DMGen
  class OneFileGenerator < Templater::Generator
    first_argument :name, :required => true
    second_argument :model
    third_argument :attributes, :as => :hash, :default => {}

    desc <<-eos
      Generates a 'one file test' for DataMapper, including debug logging and sqlite3 memory DB
      Use like 'dm-gen one_file filename [model] [model,attributes,here]'
    eos

    def self.source_root
      File.join(File.dirname(__FILE__), '..', 'templates')
    end

    template :one_file do |t|
      t.source = 'one_file.rb'
      t.destination = "#{self.name}.rb"
    end

    def model_name
      (model) ? model.camel_case : "TestModel"
    end

  end

  add :one_file, OneFileGenerator
end
