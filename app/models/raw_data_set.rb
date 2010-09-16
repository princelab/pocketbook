class RawDataSet
  include Mongoid::Document
  field :organism_name, :type => String
  field :mass_spec_type, :type => String
  field :date_submitted, :type => Date
  field :spectra_type, :type => String
  field :solvents, :type => String
end
