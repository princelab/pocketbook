require 'spec_helper'

describe RawDataSet do
  
  before do
    @attr = { :organism_name => "Homo Sapiens",
              :mass_spec_type => "MALDI!",
              :spectra_type => "MS1",
              :solvents => "MeO"
    }
  end

  it "should create a new instance given valid attributes" do
    Factory.create(:valid_raw)
  end

  
  describe "validation" do
    it "should reject blank organism_names" do
      fact = Factory(:valid_raw)
      fact.organism_name = ""
      fact.should_not be_valid
    end

    it "should reject blank mass_spec_types" do
      RawDataSet.new(@attr.merge({ :mass_spec_type => "" })).should_not be_valid
    end
    
    it "should set the date_created on creation" do
      set = RawDataSet.create!(@attr)
      set.date_created.should_not be_nil
    end

    it "should set the date_modified on insertion of a new object" do
      set = RawDataSet.create!(@attr)
      set.date_modified.should_not be_nil
    end
  end
end
