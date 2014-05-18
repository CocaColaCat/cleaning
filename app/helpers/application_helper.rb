module ApplicationHelper

  def nav_link(link_text, link_path, is_top_parent)
    class_name = current_page?(link_path) ? 'current' : ' '
    class_name += (is_top_parent ? ' top_parent' : '')
    
    link_to link_text, link_path, :class => class_name
  end

end
