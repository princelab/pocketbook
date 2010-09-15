require 'spec_helper'

describe RawDataSetsController do

  describe "GET 'download'" do
    it "should be successful" do
      get 'download'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

end
