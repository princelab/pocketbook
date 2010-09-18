class RawDataSet
  include Mongoid::Document
  field :organism_name, :type => String
  field :mass_spec_type, :type => String
  field :spectra_type, :type => String
  field :solvents, :type => String
  field :date_created, :type => Date
  field :date_modified, :type => Date

  attr_protected :date_submitted, :date_updated

  before_create :init_date_created
  before_save :init_date_modified

  validates_presence_of :organism_name, :mass_spec_type

  protected
  def init_date_created
    self.date_created = Date.today
  end

  def init_date_modified
    self.date_modified = Date.today
  end
end
