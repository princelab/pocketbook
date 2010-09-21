class SearchController < ApplicationController
  def search_form
  end

  def search
    @organisms = RawDataSet.only(:organism_name)
    @mass_spec_types = RawDataSet.only(:mass_spec_type)
    @spec_type = RawDataSet.only(:mass_spec_type)

    unless params[:q].nil?
      @results = "<h1>I am the walrus</h1>"
    end
  end

end
