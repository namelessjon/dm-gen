require 'spec_helper'

describe 'DataMapper::Is::<%= class_name %>' do

  supported_by :sqlite, :postgres, :mysql, :oracle, :sqlserver do

    before :each do
      DataMapper.auto_migrate!
    end

    it "needs somes specs"


  end

end
