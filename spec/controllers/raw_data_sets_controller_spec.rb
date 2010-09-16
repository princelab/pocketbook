require 'spec_helper'

describe RawDataSetsController do
  render_views

  describe "GET 'download'" do
    it "should be successful" do
      get 'download'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should return a form for creating a new RawDataSet" do
      get 'new'
      response.should have_selector("form", :id => "new_raw_data_set")
    end
  end

end
