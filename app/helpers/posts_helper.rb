module PostsHelper
  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

    options = {
      fenced_code_blocks: true,
      no_entra_emphasis: true,
      autolink: true,
      lax_html_blocks: true,
      tables: true,
    }

    markdown_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_html.render(text).html_safe
  end
end
