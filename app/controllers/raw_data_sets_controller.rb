class RawDataSetsController < ApplicationController
  
  def download

  end

  def new
    @raw_data_set = RawDataSet.new
    @title = "Upload Some Data!"
  end


end
