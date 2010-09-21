class RawDataSetsController < ApplicationController

  def show
    @title = "GET!"
    @raw_data_set = RawDataSet.find(params[:id])
    #should the view really know the names of the fields?
  end

  def index
    @raw_data_sets = RawDataSet.find(:all)
  end

  def download
    #todo: implement real file download
    send_file("#{Rails.root}/public/404.html")
  end

  def new
    @raw_data_set = RawDataSet.new
    @title = "Upload Some Data!"
  end

  def create
    @raw_data_set = RawDataSet.new(params[:raw_data_set])
    if @raw_data_set.save
      redirect_to @raw_data_set
    else
      render "new"
    end
  end

end
