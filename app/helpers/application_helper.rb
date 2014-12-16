module ApplicationHelper
  def build_menu
    menu_items = MenuItem.all.order('priority ASC')
    render "shared/menu", menu_items: menu_items
  end
end
