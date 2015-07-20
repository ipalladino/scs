module ApplicationHelper
  def build_menu
    menu_items = MenuItem.all.order('priority ASC')
    render "shared/menu", menu_items: menu_items
  end

  def is_admin
    return true
  end
end
