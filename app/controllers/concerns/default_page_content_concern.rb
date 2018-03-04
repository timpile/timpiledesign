module DefaultPageContentConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Tim Pile | Design & Development"
    @seo_keywords = "Tim Pile Design Development Ruby Rails HTML Wordpress Web"
  end
end
