module ApplicationHelper
  def jst(time)
    return unless time

    time.in_time_zone('Tokyo')
  end

  def header_link_item(name, path)
    class_name = 'nav-item'
    class_name << ' active' if current_page?(path)

    content_tag :li, class: class_name do
      link_to name, path, class: 'nav-link'
    end
  end
end
