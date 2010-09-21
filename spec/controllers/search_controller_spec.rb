require 'spec_helper'

describe SearchController do

  describe "GET 'search_form'" do
    it "should be successful" do
      get 'search_form'
      response.should be_success
    end
  end

  describe "GET 'search'" do
    it "should have the correct title" do
      get "search"
      response.should have_selector("title", :content => "Search")
    end

    it "should show a search form" do
      get "search"
      response.should have_selector("form")
    end
  end

end
