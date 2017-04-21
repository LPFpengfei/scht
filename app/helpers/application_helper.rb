module ApplicationHelper
  def highlight_menu(current_menu, menu)
    current_menu == menu ? 'am-active' : ''
  end

  def website_title
    return '中华家圆' if @title.nil?
    return "#{@title}"
  end
  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end
end
