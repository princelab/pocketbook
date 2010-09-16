module ApplicationHelper
  #define a uniform title for the site
  def title
    base_title = "PocketBook Mass Spec Proteomics Database"
    unless @title.nil?
      "#{base_title} | #{@title}"
    end
  end
end
