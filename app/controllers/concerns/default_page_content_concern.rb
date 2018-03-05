module DefaultPageContentConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
    before_action :set_page_styles
  end

  def set_page_defaults
    @page_title = "Tim Pile | Web Design & Development"
    @seo_keywords = "Tim Pile Design Development Ruby Rails HTML Wordpress Web"
  end

  def set_page_styles
    if controller_name == 'registrations' && action_name == "new"
      @body_style = "signup-page"
      @nav_style = "navbar navbar-expand-lg bg-danger navbar-absolute navbar-transparent"
    elsif controller_name == 'sessions' && action_name == "new"
      @body_style = "login-page"
      @nav_style = "navbar navbar-expand-lg bg-white fixed-top navbar-transparent"
    elsif controller_name == 'pages' && action_name == "blog"
      @body_style = "blog-posts"
      @nav_style = "navbar navbar-expand-lg bg-danger fixed-top navbar-transparent"
    else
      @body_style = "index-page"
      @nav_style = "navbar navbar-expand-lg bg-danger fixed-top navbar-transparent"
    end
  end
end
