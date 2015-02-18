module ApplicationHelper
  def page_header(header)
    content_tag(:div, class: 'page-header-wrapper') do
      concat(content_tag(:h1, "#{header}", class: 'page-header', 'data-role' => 'page-header'))
    end
  end
end
