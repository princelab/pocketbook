require 'spec_helper'

describe RawDataSetsController do
  render_views

  before(:each) do
    @valid_raw = Factory(:valid_raw)
  end

  describe "GET 'download'" do
    it "should be successful" do
      get :download, :id => @valid_raw._id
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get :show, :id => @valid_raw._id
    end
  end

  describe "GET 'index'" do 
    it "should be successful" do
      get :index
      response.should be_success
    end

    it "should find the correct number of raw data sets" do
      get :index
    end
  end

  describe "GET 'new'" do
    it "should return a form for creating a new RawDataSet" do
      get :new
      response.should have_selector("form", :id => "new_raw_data_set")
    end
  end

  describe "POST 'create'" do

    describe "success" do
      before do
        @attr = { :organism_name => "Bunk", 
                  :mass_spec_type => "Honda",
                  :spectra_type => "MS2",
                  :solvents_used => "cheese"
        }
      end
      it "should create a raw_data_set" do
        lambda do
          post :create, :raw_data_set => @attr
        end.should change(RawDataSet, :count)
      end
    end
  end

end
